import os
import json
import processing
import logging
import re
from qgis.core import QgsProject, QgsLayerTreeGroup, QgsLayerTreeLayer, QgsMessageLog
from qgis.utils import iface
from PyQt5.QtWidgets import (QAction, QFileDialog, QPushButton, QVBoxLayout, 
                             QDialog, QLabel, QProgressBar, QListWidget, QListWidgetItem)
from PyQt5.QtGui import QIcon
from PyQt5.QtCore import QThread, pyqtSignal

class AuQCBMSF2:
    def __init__(self, iface):
        self.iface = iface
        self.plugin_dir = os.path.dirname(__file__)
        self.actions = []
        self.menu = 'GMD Plugins'
        self.qml_folder = None
        self.qml_config = None
        self.layers = []  # List to hold layers for export
        self.export_path = None  # Initialize export_path here
        self.load_saved_folder()
        self.load_qml_config()

    def initGui(self):
        icon_path = os.path.join(self.plugin_dir, 'icon.png')
        self.action = QAction(QIcon(icon_path), 'Open AuQCBMSF2', self.iface.mainWindow())
        self.action.setWhatsThis('Open AuQCBMSF2')
        self.action.triggered.connect(self.open_dialog)
        self.iface.addPluginToMenu(self.menu, self.action)
        self.iface.addToolBarIcon(self.action)

    def unload(self):
        self.iface.removePluginMenu(self.menu, self.action)
        self.iface.removeToolBarIcon(self.action)

    def open_dialog(self):
        dialog = QDialog()
        dialog.setWindowTitle("AuQCBMSF2")

        layout = QVBoxLayout()

        self.folder_label = QLabel("Select the folder containing QML files:")
        layout.addWidget(self.folder_label)

        self.select_button = QPushButton("Select Folder")
        self.select_button.clicked.connect(self.select_folder)
        layout.addWidget(self.select_button)

        # ListWidget to select multiple layer groups
        self.group_listwidget = QListWidget()
        self.group_listwidget.setSelectionMode(QListWidget.MultiSelection)
        layout.addWidget(self.group_listwidget)

        # Populate the ListWidget with available layer groups
        self.populate_layer_groups()

        self.run_button = QPushButton("Run")
        self.run_button.clicked.connect(self.run)
        layout.addWidget(self.run_button)

        # Add a progress bar to the dialog
        self.progress_bar = QProgressBar()
        self.progress_bar.setMinimum(0)
        self.progress_bar.setValue(0)
        layout.addWidget(self.progress_bar)

        # Add a label for selecting the export path
        self.export_path_label = QLabel("Select the export path:")
        layout.addWidget(self.export_path_label)

        # Add a button to browse for the export path
        self.export_path_button = QPushButton("Browse")
        self.export_path_button.clicked.connect(self.select_export_path)
        layout.addWidget(self.export_path_button)

        # Display the saved folder path if available
        if self.qml_folder:
            display_folder = os.path.basename(self.qml_folder)
            self.folder_label.setText(f"Selected Folder: .../{display_folder}")

        # Display the saved export path if available
        if self.export_path:
            display_export_path = os.path.basename(self.export_path)
            self.export_path_label.setText(f"Selected Export Path: .../{display_export_path}")

        # Add version label at the bottom
        version_label = QLabel("Version: 1 build 1")
        layout.addWidget(version_label)

        dialog.setLayout(layout)
        dialog.exec_()

        # Automatically call export after styles are applied
        # self.export_layers()

    def select_folder(self):
        folder = QFileDialog.getExistingDirectory(None, "Select QML Folder")
        if folder:
            self.qml_folder = folder
            display_folder = os.path.basename(folder)
            self.folder_label.setText(f"Selected Folder: .../{display_folder}")
            with open(self.get_folder_path_file(), 'w') as f:
                json.dump({'folder': folder}, f)
            self.load_qml_config()
            self.populate_layer_groups()

    def get_folder_path_file(self):
        return os.path.join(self.plugin_dir, 'folder_path.json')

    def load_saved_folder(self):
        path_file = self.get_folder_path_file()
        if os.path.exists(path_file):
            with open(path_file, 'r') as f:
                data = json.load(f)
                self.qml_folder = data.get('folder', '')
                self.export_path = data.get('export_path', '')  # Load export path if available

    def load_qml_config(self):
        if self.qml_folder:
            qml_config_path = os.path.join(self.qml_folder, 'qml_config.json')
            try:
                with open(qml_config_path, 'r') as f:
                    self.qml_config = json.load(f)
            except FileNotFoundError:
                iface.messageBar().pushWarning("Warning", f"QML configuration file not found: {qml_config_path}")
                self.qml_config = None
            except json.JSONDecodeError:
                iface.messageBar().pushWarning("Warning", f"Invalid JSON in QML configuration file: {qml_config_path}")
                self.qml_config = None

    def apply_styles_to_layer(self, layer, qml_files):
        """Apply QML styles to a given layer based on its name."""
        layer_name = layer.name()
        for key, qml_file in qml_files.items():
            if key in layer_name.lower():
                try:
                    # Attempt to load the new style
                    layer.loadNamedStyle(qml_file)
                    layer.triggerRepaint()
                except Exception as e:
                    iface.messageBar().pushCritical("Error", f"Failed to load style for {layer_name}: {str(e)}")

    def rearrange_layers(self, group, layers, layer_order):
        """Rearrange layers within the selected group according to the specified order."""
        layer_dict = {layer.name().lower(): layer for layer in layers}
        for layer_name in layer_order:
            for key, layer in layer_dict.items():
                if layer_name in key:
                    group.removeChildNode(QgsLayerTreeLayer(layer))
                    group.insertChildNode(0, QgsLayerTreeLayer(layer))
                    break

    def remove_duplicate_layers(self, group):
        """Remove duplicate layers from the given group."""
        layer_names = set()
        nodes_to_remove = []
        
        for node in group.children():
            if isinstance(node, QgsLayerTreeLayer):
                layer = node.layer()
                layer_name = layer.name()
                if layer_name in layer_names:
                    nodes_to_remove.append(node)
                else:
                    layer_names.add(layer_name)
        
        for node in nodes_to_remove:
            group.removeChildNode(node)

    def populate_layer_groups(self):
        self.group_listwidget.clear()
        root = QgsProject.instance().layerTreeRoot()
        groups = root.findGroups()
        for group in groups:
            item = QListWidgetItem(group.name())
            self.group_listwidget.addItem(item)

    def collect_layers_from_group(self, group, layer_list):
        """Recursively collects all layers from the specified group and adds them to layer_list."""
        for node in group.children():
            if isinstance(node, QgsLayerTreeLayer):  # If it's a layer, add it to the list
                layer_name = node.layer().name()
                layer_info = {
                    "name": layer_name,
                    "id": node.layer().id(),
                    "type": node.layer().type(),
                }
                layer_list.append(layer_info)
            elif isinstance(node, QgsLayerTreeGroup):  # If it's a group, recursively collect layers from it
                self.collect_layers_from_group(node, layer_list)

    # def save_layers_to_json(self, all_layers, group_name):
    #     """Save all layer information to a single structured JSON file."""
    #     temp_file = os.path.join(self.plugin_dir, 'layers_temp.json')
    #     with open(temp_file, 'w') as f:
    #         json.dump(all_layers, f, indent=4)

    # def load_layers_from_json(self):
    #     """Load the saved layer information from the temporary JSON file."""
    #     temp_file = os.path.join(self.plugin_dir, 'layers_temp.json')
    #     if os.path.exists(temp_file):
    #         with open(temp_file, 'r') as f:
    #             return json.load(f)
    #     return []

    def run(self):
        # Reset state variables
        self.layers = []  # Reset layers list
        self.progress_bar.setValue(0)  # Reset progress bar

        if not self.qml_folder:
            iface.messageBar().pushCritical("Error", "Please select a folder first.")
            return

        selected_groups = [item.text() for item in self.group_listwidget.selectedItems()]
        if not selected_groups:
            iface.messageBar().pushCritical("Error", "Please select at least one layer group.")
            return

        # Load QML file paths from JSON
        self.load_qml_config_from_file()  # Extracted method for loading QML config

        qml_files = {key: os.path.join(self.qml_folder, value) for key, value in self.qml_config['qml_files'].items()}
        outside_group_qml = [os.path.join(self.qml_folder, qml) for qml in self.qml_config['outside_group_qml']]
        layer_order = self.qml_config['layer_order']

        root = QgsProject.instance().layerTreeRoot()
        total_layers = 0
        processed_layers = set()

        # Process layers within selected groups
        for selected_group_name in selected_groups:
            selected_group = root.findGroup(selected_group_name)
            if not selected_group:
                iface.messageBar().pushCritical("Error", f"Layer group '{selected_group_name}' not found.")
                continue

            layers = [node.layer() for node in selected_group.children() if isinstance(node, QgsLayerTreeLayer)]
            self.remove_mixed_layers(selected_groups, selected_group)  # Check for mixed layers
            self.collect_layers_from_group(selected_group, self.layers)  # Collect layers for export
            total_layers += len(layers)  # Update total layers count

        # Add count for layers outside the selected groups
        all_layers = [node.layer() for node in root.children() if isinstance(node, QgsLayerTreeLayer)]
        outside_layers = [layer for layer in all_layers if layer not in processed_layers]
        total_layers += len(outside_layers)

        self.progress_bar.setMaximum(total_layers)
        self.progress_bar.setValue(0)

        # Process layers within selected groups
        for selected_group_name in selected_groups:
            selected_group = root.findGroup(selected_group_name)
            if not selected_group:
                continue

            layers = [node.layer() for node in selected_group.children() if isinstance(node, QgsLayerTreeLayer)]
            for layer in layers:
                self.apply_styles_to_layer(layer, qml_files)
                processed_layers.add(layer)
                self.progress_bar.setValue(self.progress_bar.value() + 1)  # Increment progress for each processed layer

            # Rearrange layers and remove duplicates
            self.rearrange_layers(selected_group, layers, layer_order)
            self.remove_duplicate_layers(selected_group)

            # Export layers for the current group
            self.export_layers_for_group(selected_group_name, qml_files, outside_group_qml)

            # Reset progress bar for the next group
            self.progress_bar.setValue(0)  # Reset progress bar for the next group

        # Process layers outside the selected groups
        self.process_outside_layers(outside_layers, outside_group_qml)  # Extracted method for processing outside layers

        # Ensure the progress bar reaches 100%
        self.progress_bar.setValue(total_layers)  # Set to total layers processed
        iface.messageBar().pushInfo("Process Complete", "Styles applied, layers rearranged, duplicates removed, and layers exported for selected groups. Styles applied to layers outside the selected groups.")

    def load_qml_config_from_file(self):
        """Load QML configuration from the specified file."""
        qml_config_path = os.path.join(self.qml_folder, 'qml_config.json')
        try:
            with open(qml_config_path, 'r') as f:
                self.qml_config = json.load(f)
        except (FileNotFoundError, json.JSONDecodeError) as e:
            iface.messageBar().pushCritical("Error", f"Failed to load QML configuration: {str(e)}")
            self.qml_config = None

    def process_outside_layers(self, outside_layers, outside_group_qml):
        """Process layers that are outside the selected groups."""
        for layer in outside_layers:
            if self.should_apply_outside_group_style(layer):
                for qml_file in outside_group_qml:
                    try:
                        layer.loadNamedStyle(qml_file)
                        layer.triggerRepaint()
                    except Exception as e:
                        iface.messageBar().pushCritical("Error", f"Failed to load style for {layer.name()}: {str(e)}")
            self.progress_bar.setValue(self.progress_bar.value() + 1)  # Increment progress for each processed outside layer

    # def export_layers_for_group(self, layer_group_name, qml_files, outside_group_qml):
    #     """Export all layers inside a specific group into a single GeoPackage."""
    #     sanitized_group_name = re.sub(r'[<>:"/\\|?*]', '_', layer_group_name)

    #     if not self.export_path:
    #         iface.messageBar().pushCritical("Error", "Please select a valid export path.")
    #         return
        
    #     output_gpkg = os.path.join(self.export_path, f"{sanitized_group_name}.gpkg")
    #     self.layers = []  # Reset layers for the current group

    #     selected_group = QgsProject.instance().layerTreeRoot().findGroup(layer_group_name)
    #     if selected_group:
    #         self.collect_layers_from_group(selected_group, self.layers)

    #     if not self.layers:
    #         iface.messageBar().pushCritical("Error", f"No layers found in the group '{layer_group_name}'.")
    #         return

    #     total_layers = len(self.layers)
    #     self.progress_bar.setRange(0, total_layers)  # Set range based on the number of layers to export
    #     self.progress_bar.setValue(0)  # Reset progress bar for this export

    #     try:
    #         iface.messageBar().pushInfo("Info", f"Exporting {total_layers} layers to {output_gpkg}")

    #         # Prepare the layer IDs for export
    #         layer_ids = [layer['id'] for layer in self.layers]

    #         # Run the export process for all layers in one go
    #         alg_params = {
    #             'LAYERS': layer_ids,  # Pass all layer IDs
    #             'EXPORT_RELATED_LAYERS': False,
    #             'OVERWRITE': True,
    #             'SAVE_METADATA': True,
    #             'SAVE_STYLES': True,
    #             'SELECTED_FEATURES_ONLY': False,
    #             'OUTPUT': output_gpkg
    #         }

    #         processing.run("native:package", alg_params)

    #         # Update progress bar to 100% after export
    #         self.progress_bar.setValue(total_layers)  # Set progress bar to complete after export
    #         iface.messageBar().pushInfo("Export Complete", f"Layers successfully exported to {output_gpkg}")
    #     except Exception as e:
    #         iface.messageBar().pushCritical("Error", f"Failed to export layers for group '{layer_group_name}': {str(e)}")
    #     finally:
    #         self.progress_bar.setRange(0, 100)  # Set range for completion
    #         self.progress_bar.setValue(100)  # Set to 100% after export
    #         self.progress_bar.setFormat("Complete")  # Set the loading text to "Complete"
    #         self.progress_bar.setValue(0)  # Reset progress bar to 0 after completion

    #     iface.messageBar().pushInfo("Process Complete", f"Export completed successfully for group '{layer_group_name}'.")

    def export_layers_for_group(self, layer_group_name, qml_files, outside_group_qml):
        """Export all layers inside a specific group into a single GeoPackage."""
        sanitized_group_name = re.sub(r'[<>:"/\\|?*]', '_', layer_group_name)

        if not self.export_path:
            iface.messageBar().pushCritical("Error", "Please select a valid export path.")
            return
        
        output_gpkg = os.path.join(self.export_path, f"{sanitized_group_name}.gpkg")
        self.layers = []  # Reset layers for the current group

        selected_group = QgsProject.instance().layerTreeRoot().findGroup(layer_group_name)
        if not selected_group:
            iface.messageBar().pushCritical("Error", f"Layer group '{layer_group_name}' not found.")
            return

        self.collect_layers_from_group(selected_group, self.layers)

        if not self.layers:
            iface.messageBar().pushCritical("Error", f"No layers found in the group '{layer_group_name}'.")
            return

        self.progress_bar.setRange(0, len(self.layers))  # Set range based on the number of layers to export
        self.progress_bar.setValue(0)  # Reset progress bar for this export

        try:
            # Prepare the layer IDs for export
            layer_ids = [layer['id'] for layer in self.layers]
            iface.messageBar().pushInfo("Info", f"Exporting {len(layer_ids)} layers to {output_gpkg}")

            alg_params = {
                'LAYERS': layer_ids,  # Pass all layer IDs
                'EXPORT_RELATED_LAYERS': False,
                'OVERWRITE': True,
                'SAVE_METADATA': True,
                'SAVE_STYLES': True,
                'SELECTED_FEATURES_ONLY': False,
                'OUTPUT': output_gpkg
            }

            processing.run("native:package", alg_params)

            self.progress_bar.setValue(len(self.layers))  # Set progress bar to complete after export
            iface.messageBar().pushInfo("Export Complete", f"Layers successfully exported to {output_gpkg}")
        except Exception as e:
            iface.messageBar().pushCritical("Error", f"Failed to export layers for group '{layer_group_name}': {str(e)}")
        finally:
            self.progress_bar.setRange(0, len(self.layers))  # Set range for completion
            self.progress_bar.setValue(len(self.layers))  # Set to 100% after export
            self.progress_bar.setFormat("Complete")  # Set the loading text to "Complete"

        iface.messageBar().pushInfo("Process Complete", f"Export completed successfully for group '{layer_group_name}'.")

    def remove_mixed_layers(self, selected_groups, current_group):
        """Remove layers that are present in multiple groups."""
        layer_names_in_groups = {}
        root = QgsProject.instance().layerTreeRoot()

        # Collect layer names from all selected groups
        for group_name in selected_groups:
            group = root.findGroup(group_name)
            if group:
                for node in group.children():
                    if isinstance(node, QgsLayerTreeLayer):
                        layer_name = node.layer().name()
                        if layer_name not in layer_names_in_groups:
                            layer_names_in_groups[layer_name] = []
                        layer_names_in_groups[layer_name].append(group_name)

        # Identify and remove mixed layers from the current group
        for layer_name, groups in layer_names_in_groups.items():
            if len(groups) > 1:  # If the layer is in more than one group
                # Find and remove the layer from the current group
                for node in current_group.children():
                    if isinstance(node, QgsLayerTreeLayer) and node.layer().name() == layer_name:
                        current_group.removeChildNode(node)
                        iface.messageBar().pushInfo("Info", f"Removed mixed layer: {layer_name} from group: {current_group.name()}")
                        break

    def select_export_path(self):
        """Open a dialog to select the export path and save it."""
        self.export_path = QFileDialog.getExistingDirectory(None, "Select Export Directory")
        if self.export_path:
            self.export_path_label.setText(f"Selected Export Path: {self.export_path}")
            # Save the export path to folder_path.json
            with open(self.get_folder_path_file(), 'w') as f:
                json.dump({'folder': self.qml_folder, 'export_path': self.export_path}, f)

      

