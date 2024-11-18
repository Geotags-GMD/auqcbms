import os

from libqfieldsync.layer import LayerSource
from libqfieldsync.offline_converter import ExportType, OfflineConverter
import sys
from qgis import utils
# TODO this try/catch was added due to module structure changes in QFS 4.8.0. Remove this as enough time has passed since March 2024.
try:
    from libqfieldsync.offliners import QgisCoreOffliner
except ModuleNotFoundError:
    from qgis.PyQt.QtCore import QCoreApplication
    from qgis.PyQt.QtWidgets import QMessageBox

    QMessageBox.warning(
        None,
        QCoreApplication.translate("QFieldSync", "Please restart QGIS"),
        QCoreApplication.translate(
            "QFieldSync", "To finalize the QFieldSync upgrade, please restart QGIS."
        ),
    )
from libqfieldsync.project import ProjectConfiguration
from libqfieldsync.project_checker import ProjectChecker
from libqfieldsync.utils.file_utils import fileparts
from libqfieldsync.utils.qgis import get_project_title
from qgis.core import Qgis, QgsApplication, QgsProject, QgsLayerTreeGroup, QgsLayerTreeLayer, QgsVectorLayer, QgsRasterLayer
from qgis.PyQt.QtCore import QDir, Qt, QUrl
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QApplication, QDialog, QDialogButtonBox, QMessageBox
from qgis.PyQt.uic import loadUiType
from .checker_feedback_table import CheckerFeedbackTable
from ..core.preferences import Preferences
from .dirs_to_copy_widget import DirsToCopyWidget
from .project_configuration_dialog import ProjectConfigurationDialog
import processing
from ..utils.qt_utils import make_folder_selector

DialogUi, _ = loadUiType(
    os.path.join(os.path.dirname(__file__), "../ui/package_dialog.ui")
)


class PackageDialog(QDialog, DialogUi):
    def __init__(self, iface, project, offline_editing, parent=None):
        """Constructor."""
        super(PackageDialog, self).__init__(parent=parent)
        self.setupUi(self)

        self.iface = iface
        self.offliner = QgisCoreOffliner(offline_editing=offline_editing)
        self.project = project
        self.qfield_preferences = Preferences()
        self.dirsToCopyWidget = DirsToCopyWidget()
        self.__project_configuration = ProjectConfiguration(self.project)
        self.run_button.clicked.connect(self.run)
        self.group_dropdown.currentIndexChanged.connect(self.populate_layers_dropdown)
        self.layer_dropdown.currentIndexChanged.connect(self.populate_geocode_dropdown)
        self.project_lbl.setText(get_project_title(self.project))
        self.button_box.button(QDialogButtonBox.Save).setText(self.tr("Export"))
        self.button_box.button(QDialogButtonBox.Save).clicked.connect(
            self.package_project
        )
        self.button_box.button(QDialogButtonBox.Reset).clicked.connect(
            self.reset_filter
        )

        self.devices = None
        self.project_checker = ProjectChecker(QgsProject.instance())
        # self.refresh_devices()
        self.setup_gui()

         # Initialize variables
        self.layers = {}

        # Load groups on dialog initialization
        self.load_layer_groups()

        self.offliner.warning.connect(self.show_warning)


    def update_progress(self, sent, total):
        progress = float(sent) / total * 100
        self.progress_bar.setValue(progress)

    def setup_gui(self):
        """Populate gui and connect signals of the push dialog"""
        export_dirname = self.qfield_preferences.value("exportDirectoryProject")
        if not export_dirname:
            export_dirname = os.path.join(
                self.qfield_preferences.value("exportDirectory"),
                fileparts(QgsProject.instance().fileName())[1],
            )

        self.manualDir.setText(QDir.toNativeSeparators(str(export_dirname)))
        self.manualDir_btn.clicked.connect(make_folder_selector(self.manualDir))
        self.update_info_visibility()

        self.nextButton.clicked.connect(lambda: self.show_package_page())
        self.nextButton.setVisible(False)
        self.button_box.setVisible(False)

        # self.advancedOptionsGroupBox.layout().addWidget(self.dirsToCopyWidget)

        self.dirsToCopyWidget.set_path(QgsProject().instance().homePath())
        self.dirsToCopyWidget.refresh_tree()

        feedback = None
        if os.path.exists(self.project.fileName()):
            feedback = self.project_checker.check(ExportType.Cable)

        if feedback and feedback.count > 0:
            has_errors = len(feedback.error_feedbacks) > 0

            feedback_table = CheckerFeedbackTable(feedback)
            self.feedbackTableWrapperLayout.addWidget(feedback_table)
            self.stackedWidget.setCurrentWidget(self.projectCompatibilityPage)
            self.nextButton.setVisible(True)
            self.nextButton.setEnabled(not has_errors)
        else:
            self.show_package_page()

    def get_export_folder_from_dialog(self):
        """Get the export folder according to the inputs in the selected"""
        # manual
        return self.manualDir.text()

    def show_package_page(self):
        self.nextButton.setVisible(False)
        self.button_box.setVisible(True)
        self.stackedWidget.setCurrentWidget(self.packagePage)

    def package_project(self):
        self.button_box.button(QDialogButtonBox.Save).setEnabled(False)

        export_folder = self.get_export_folder_from_dialog()
        area_of_interest = (
            self.__project_configuration.area_of_interest
            if self.__project_configuration.area_of_interest
            else self.iface.mapCanvas().extent().asWktPolygon()
        )
        area_of_interest_crs = (
            self.__project_configuration.area_of_interest_crs
            if self.__project_configuration.area_of_interest_crs
            else QgsProject.instance().crs().authid()
        )

        selected_geocode = self.geocode_dropdown.currentText()

        # Validation check for selected geocode
        if not selected_geocode:
            QMessageBox.warning(self, "Missing Geocode", "Please select a valid geocode before exporting.")
            return

        self.qfield_preferences.set_value("exportDirectoryProject", export_folder)
        self.dirsToCopyWidget.save_settings()

        # Create a directory based on the selected geocode
        geocode_folder = os.path.join(export_folder, selected_geocode)
        os.makedirs(geocode_folder, exist_ok=True)

        offline_convertor = OfflineConverter(
            self.project,
            geocode_folder,
            area_of_interest,
            area_of_interest_crs,
            self.qfield_preferences.value("attachmentDirs"),
            self.offliner,
            ExportType.Cable,
            dirs_to_copy=self.dirsToCopyWidget.dirs_to_copy(),
        )

        # progress connections
        offline_convertor.total_progress_updated.connect(self.update_total)
        offline_convertor.task_progress_updated.connect(self.update_task)
        offline_convertor.warning.connect(
            lambda title, body: QMessageBox.warning(None, title, body)
        )

        try:
            QApplication.setOverrideCursor(Qt.WaitCursor)
            offline_convertor.convert()
            self.do_post_offline_convert_action(True)
        except Exception as err:
            self.do_post_offline_convert_action(False)
            raise err
        finally:
            QApplication.restoreOverrideCursor()


        plugin_to_reload = "auqcbms"  # Replace with the name of the plugin you want to reload
        self.reload_plugin(plugin_to_reload)
        self.accept()
        self.button_box.button(QDialogButtonBox.Save).setEnabled(True)

        # Reset the dialog state after export
        # self.reset_after_export()

    def reset_after_export(self):
        """Reset the dialog state to allow for a new export."""
        self.button_box.button(QDialogButtonBox.Save).setEnabled(True)  # Re-enable the save button
        self.progress_group.setEnabled(True)  # Re-enable the progress group
        self.layer_dropdown.clear()  # Clear the layer dropdown
        self.geocode_dropdown.clear()  # Clear the geocode dropdown
        self.infoLocalizedLayersLabel.setVisible(False)  # Hide any info labels
        self.infoLocalizedPresentLabel.setVisible(False)
        self.infoGroupBox.setVisible(False)
        self.layers = {}  # Clear the layers dictionary
        self.update_info_visibility()  # Update visibility of info labels

        # Repopulate the dropdowns after reset
        self.populate_layers_dropdown()  # Ensure this method exists
        self.populate_geocode_dropdown()  # Ensure this method exists

    def do_post_offline_convert_action(self, is_success):
        """
        Show an information label that the project has been copied
        with a nice link to open the result folder.
        """
        if is_success:
            export_folder = self.get_export_folder_from_dialog()
            result_message = self.tr(
                "Finished creating the project at {result_folder}. Please copy this folder to "
                "your QField device."
            ).format(
                result_folder='<a href="{folder}">{display_folder}</a>'.format(
                    folder=QUrl.fromLocalFile(export_folder).toString(),
                    display_folder=QDir.toNativeSeparators(export_folder),
                )
            )
            status = Qgis.Success
        else:
            result_message = self.tr(
                "Failed to package project. See message log (Python Error) for more details."
            )
            status = Qgis.Warning

        self.iface.messageBar().pushMessage(result_message, status, 0)

    def update_info_visibility(self):
        """
        Show the info label if there are unconfigured layers
        """
        localizedDataPathLayers = []
        for layer in list(self.project.mapLayers().values()):
            layer_source = LayerSource(layer)

            if layer_source.is_localized_path:
                localizedDataPathLayers.append(
                    "- {} ({})".format(layer.name(), layer_source.filename)
                )

        if localizedDataPathLayers:
            if len(localizedDataPathLayers) == 1:
                self.infoLocalizedLayersLabel.setText(
                    self.tr("The layer stored in a localized data path is:\n{}").format(
                        "\n".join(localizedDataPathLayers)
                    )
                )
            else:
                self.infoLocalizedLayersLabel.setText(
                    self.tr(
                        "The layers stored in a localized data path are:\n{}"
                    ).format("\n".join(localizedDataPathLayers))
                )
            self.infoLocalizedLayersLabel.setVisible(True)
            self.infoLocalizedPresentLabel.setVisible(True)
        else:
            self.infoLocalizedLayersLabel.setVisible(False)
            self.infoLocalizedPresentLabel.setVisible(False)
        self.infoGroupBox.setVisible(len(localizedDataPathLayers) > 0)

    def show_settings(self):
        if Qgis.QGIS_VERSION_INT >= 31500:
            self.iface.showProjectPropertiesDialog("QField")
        else:
            dlg = ProjectConfigurationDialog(self.iface.mainWindow())
            dlg.exec_()
        self.update_info_visibility()

    def update_total(self, current, layer_count, message):
        self.totalProgressBar.setMaximum(layer_count)
        self.totalProgressBar.setValue(current)
        self.statusLabel.setText(message)

    def update_task(self, progress, max_progress):
        self.layerProgressBar.setMaximum(max_progress)
        self.layerProgressBar.setValue(progress)

    def show_warning(self, _, message):
        # Most messages from the offline editing plugin are not important enough to show in the message bar.
        # In case we find important ones in the future, we need to filter them.
        QgsApplication.instance().messageLog().logMessage(message, "QFieldSync")



    # Custom code
    def run(self):
        try:
            # Get the selected layer and geocode
            selected_layer = self.layer_dropdown.currentData()  # This should now be a QgsLayer object
            selected_geocode = self.geocode_dropdown.currentText()

            # Check if the selected layer is valid and has the correct suffix
            if not isinstance(selected_layer, (QgsVectorLayer, QgsRasterLayer)):  # Check if selected_layer is a QgsLayer
                QMessageBox.warning(self, "Selection Error", "Please select a valid layer.")
                return

            if not selected_geocode:
                QMessageBox.warning(self, "Selection Error", "Please select a valid geocode.")
                return

            # Debugging: Print the name of the selected layer
            print(f"Selected layer: {selected_layer.name()}")

            if not selected_layer.name().endswith('_bgy'):
                QMessageBox.warning(self, "Layer Error", "The selected layer must have the suffix '_bgy'.")
                return

            # Load predefined layer mapping based on known suffix patterns
            self.layers = {
                layer.name(): layer for layer in QgsProject.instance().mapLayers().values()
                if layer.name().endswith(('_bgy', '_ea2024', '_bldg_point'))
            }

            # Call the instance method to filter layers
            self.filter_layers(self.layers, selected_geocode)

        except Exception as e:
            # Handle any unexpected exceptions
            QMessageBox.critical(self, "Error", f"An unexpected error occurred: {str(e)}")
            print(f"Exception: {e}")  # Print the exception for debugging

    def reset_filter(self):
        """Reset the layer and geocode selections and clear any applied filters."""
        print("Resetting filters...")  # Debugging line
        self.layer_dropdown.clear()  # Clear the layer dropdown
        self.geocode_dropdown.clear()  # Clear the geocode dropdown
        self.infoLocalizedLayersLabel.setVisible(False)  # Hide any info labels
        self.infoLocalizedPresentLabel.setVisible(False)
        self.infoGroupBox.setVisible(False)

        # Reset filters on specific layers
        for layer_key, layer in self.layers.items():
            if layer and layer.isValid():  # Check if the layer is valid
                # Check if the layer name ends with the specified suffixes
                if layer.name().endswith(('_bgy', '_bldg_point', '_ea2024')):
                    layer.setSubsetString("")  # Clear the subset string to reset the filter

        # Optionally, repopulate the dropdowns if needed
        self.populate_layers_dropdown()  # Ensure this method exists
        self.populate_geocode_dropdown()  # Ensure this method exists

    def filter_layers(self, layers, selected_geocode):
        first_8_digits = selected_geocode[:8]

        # Loop through each layer in the dictionary and apply relevant filters
        for layer_key, layer in layers.items():
            if layer is not None and layer.isValid():
                # Apply filters based on suffixes
                if layer.name().endswith('_bgy'):
                    layer.setSubsetString(f"geocode = '{selected_geocode}'")
                elif layer.name().endswith('_ea2024'):
                    layer.setSubsetString(f"geocode LIKE '{first_8_digits}%'")
                elif layer.name().endswith('_bldg_point'):
                    layer.setSubsetString(f"geocode LIKE '{first_8_digits}%'")
                else:
                    QMessageBox.warning(None, "Unsupported Layer", f"Layer '{layer.name()}' does not match any known suffixes.")
            else:
                QMessageBox.warning(None, "Layer Invalid", f"The layer '{layer_key}' is not valid or does not exist.")

        # Call select_by_location after filtering layers
        self.select_by_location()

    def load_layer_groups(self):
        # Populate the group dropdown with layer groups in the project
        self.group_dropdown.clear()
        root = QgsProject.instance().layerTreeRoot()
        groups = [child for child in root.children() if isinstance(child, QgsLayerTreeGroup)]
        for group in groups:
            self.group_dropdown.addItem(group.name(), group)

    def populate_layers_dropdown(self):
        """Populate the layer dropdown based on the selected group."""
        selected_group = self.group_dropdown.currentData()
        if not isinstance(selected_group, QgsLayerTreeGroup):
            return

        # Populate the layer dropdown with layers in the selected group
        self.layer_dropdown.clear()
        layers = [layer for layer in selected_group.findLayers()]
        for layer in layers:
            self.layer_dropdown.addItem(layer.name(), layer.layer())

        # Clear geocode dropdown
        self.geocode_dropdown.clear()

        # Call to populate geocode dropdown if a layer is selected
        if self.layer_dropdown.count() > 0:
            self.populate_geocode_dropdown()

    def populate_geocode_dropdown(self):
        """Populate the geocode dropdown based on the selected layer."""
        selected_layer = self.layer_dropdown.currentData()
        self.geocode_dropdown.clear()

        if selected_layer and selected_layer.name().endswith('_bgy'):
            # Populate geocode dropdown with all unique geocodes from the layer
            geocode_index = selected_layer.fields().indexOf('geocode')
            if geocode_index != -1:
                geocodes = selected_layer.uniqueValues(geocode_index)
                self.geocode_dropdown.addItems(sorted(geocodes))
                print(f"Geocode values loaded for layer: {selected_layer.name()}")
            else:
                print(f"No 'geocode' field found in layer: {selected_layer.name()}")


    def select_by_location(self):
        # Get the layer named with the suffix '_road', '_block', '_river'
        input_layers = [
            layer for layer in QgsProject.instance().mapLayers().values()
            if layer.name().endswith(('_road', '_block', '_river'))
        ]
        
        # Get all layers that end with '_bgy'
        overlay_layers = [
            layer for layer in QgsProject.instance().mapLayers().values()
            if layer.name().endswith('_bgy')
        ]
        
        # Check if input_layers and overlay_layers are found
        if not input_layers:
            print("No input layers found with '_road', '_block', or '_river' suffix.")
            return
        
        if not overlay_layers:
            print("No overlay layers found with '_bgy' suffix.")
            return
        
        # Define the list of predicates
        predicates = [0]  # 'intersects', 'within', 'crosses', 'equals'

        # Run Select by Location for each input layer and each overlay layer with each predicate
        for input_layer in input_layers:
            for overlay_layer in overlay_layers:
                for predicate in predicates:
                    result = processing.run("qgis:selectbylocation", {
                        'INPUT': input_layer,
                        'PREDICATE': predicate,
                        'INTERSECT': overlay_layer,
                        'METHOD': 0  # 0 for "Create new selection"
                    })
                    print(f"Selection done for {input_layer.name()} with predicate: {predicate} and overlay: {overlay_layer.name()}")
                    
                    # Check if any features were selected
                    selected_count = input_layer.selectedFeatureCount()
                    print(f"Number of selected features in {input_layer.name()}: {selected_count}")
        
        print("Selection by location completed.")

    def reload_plugin(self, plugin_name):
        """Reload a specified QGIS plugin."""
        # Try to initially load the selected plugin if not loaded yet
        if plugin_name not in utils.plugins:
            try:
                utils.loadPlugin(plugin_name)
                utils.startPlugin(plugin_name)
                utils.updateAvailablePlugins()
                #QMessageBox.information(None, "Success", f"Plugin '{plugin_name}' loaded successfully.")
            except Exception as e:
                #QMessageBox.critical(None, "Error", f"Failed to load plugin '{plugin_name}': {str(e)}")
                return
        
        try:
            # Unload the plugin
            utils.unloadPlugin(plugin_name)

            # Remove submodules left by qgis.utils.unloadPlugin
            for key in list(sys.modules.keys()):
                if plugin_name in key:
                    if hasattr(sys.modules[key], 'qCleanupResources'):
                        sys.modules[key].qCleanupResources()
                    del sys.modules[key]

            # Reload the plugin
            utils.loadPlugin(plugin_name)
            utils.startPlugin(plugin_name)
            #self.reset_filter()

            #QMessageBox.information(None, "Success", f"Plugin '{plugin_name}' reloaded successfully.")

        except Exception as e:
            QMessageBox.critical(None, "Error", f"Failed to reload plugin '{plugin_name}': {str(e)}")




    


