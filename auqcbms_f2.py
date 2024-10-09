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
        layout.addWidget(QLabel("Select Layer Groups:"))
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

        # Add a label and button for selecting the export path
        self.export_path_label = QLabel("Select the export path:")
        layout.addWidget(self.export_path_label)

        self.export_path_button = QPushButton("Browse")
        self.export_path_button.clicked.connect(self.select_export_path)
        layout.addWidget(self.export_path_button)


        # Export button to trigger export to GeoPackage
        self.export_button = QPushButton("Export to GeoPackage")
        self.export_button.clicked.connect(self.export_to_gpkg)
        layout.addWidget(self.export_button)

        # Display the saved folder path if available
        if self.qml_folder:
            display_folder = os.path.basename(self.qml_folder)
            self.folder_label.setText(f"Selected Folder: .../{display_folder}")

        # Add version label at the bottom
        version_label = QLabel("Version: 1 build 1")
        layout.addWidget(version_label)

      

        # Initialize export path variable
        self.export_path = None

        dialog.setLayout(layout)
        dialog.exec_()

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
                if layer.name() in layer_names:
                    nodes_to_remove.append(node)
                else:
                    layer_names.add(layer.name())
        
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
                # Check if the first five digits match the group name
                if layer_name[:5] == group.name()[:5]:  # Compare the first five digits
                    layer_info = {
                        "name": layer_name,
                        "id": node.layer().id(),
                        "type": node.layer().type(),
                    }
                    layer_list.append(layer_info)
            elif isinstance(node, QgsLayerTreeGroup):  # If it's a group, recursively collect layers from it
                self.collect_layers_from_group(node, layer_list)

    def save_layers_to_json(self, all_layers, group_name):
        """Save all layer information to a single structured JSON file."""
        temp_file = os.path.join(self.plugin_dir, 'layers_temp.json')
        with open(temp_file, 'w') as f:
            json.dump(all_layers, f, indent=4)

    def load_layers_from_json(self):
        """Load the saved layer information from the temporary JSON file."""
        temp_file = os.path.join(self.plugin_dir, 'layers_temp.json')
        if os.path.exists(temp_file):
            with open(temp_file, 'r') as f:
                return json.load(f)
        return []

    def run(self):
        if not self.qml_folder:
            iface.messageBar().pushCritical("Error", "Please select a folder first.")
            return

        # Disable the export button at the start of the process
        self.export_button.setEnabled(False)

        selected_groups = [item.text() for item in self.group_listwidget.selectedItems()]
        if not selected_groups:
            iface.messageBar().pushCritical("Error", "Please select at least one layer group.")
            return

        # Load QML file paths from JSON
        qml_config_path = os.path.join(self.qml_folder, 'qml_config.json')
        try:
            with open(qml_config_path, 'r') as f:
                self.qml_config = json.load(f)
        except FileNotFoundError:
            iface.messageBar().pushCritical("Error", f"QML configuration file not found: {qml_config_path}")
            return
        except json.JSONDecodeError:
            iface.messageBar().pushCritical("Error", f"Invalid JSON in QML configuration file: {qml_config_path}")
            return

        qml_files = {key: os.path.join(self.qml_folder, value) for key, value in self.qml_config['qml_files'].items()}
        outside_group_qml = [os.path.join(self.qml_folder, qml) for qml in self.qml_config['outside_group_qml']]
        layer_order = self.qml_config['layer_order']

        root = QgsProject.instance().layerTreeRoot()
        total_layers = 0

        # Initialize layers list
        self.layers = []  # Ensure layers list is initialized

        # Track layers that have been processed within selected groups
        processed_layers = set()

        # Process layers within selected groups
        for selected_group_name in selected_groups:
            group = root.findGroup(selected_group_name)
            if group:
                self.remove_duplicate_layers(group)
                self.collect_layers_from_group(group, self.layers)

                # Initialize progress bar for applying styles
                self.progress_bar.setMaximum(len(self.layers))  # Set maximum to the number of layers
                self.progress_bar.setValue(0)  # Reset progress bar

                # Apply styles to each layer in the group
                for index, layer_info in enumerate(self.layers):
                    layer = QgsProject.instance().mapLayer(layer_info['id'])
                    if layer and layer_info['name'] not in processed_layers:
                        self.apply_styles_to_layer(layer, qml_files)
                        processed_layers.add(layer_info['name'])
                    
                    # Update progress bar for applying styles
                    self.progress_bar.setValue(index + 1)  # Update progress bar

                # After applying styles, set the progress bar to 100%
                self.progress_bar.setValue(len(self.layers))  # Set to 100% after applying styles

                # Rearrange layers in the selected group based on layer order
                self.rearrange_layers(group, [QgsProject.instance().mapLayer(layer_info['id']) for layer_info in self.layers], layer_order)

                total_layers += len(self.layers)

        # Save the layers information to JSON
        self.save_layers_to_json(self.layers, selected_groups[0])  # Save the layer names after processing

        # After processing is complete, enable the export button
        self.export_button.setEnabled(True)
      

    def select_export_path(self):
        """Open a dialog to select the export path and save it."""
        self.export_path = QFileDialog.getExistingDirectory(None, "Select Export Directory")
        if self.export_path:
            self.export_path_label.setText(f"Selected Export Path: {self.export_path}")
            # Save the export path to folder_path.json
            with open(self.get_folder_path_file(), 'w') as f:
                json.dump({'folder': self.qml_folder, 'export_path': self.export_path}, f)

    def export_to_gpkg(self):
        selected_groups = [item.text() for item in self.group_listwidget.selectedItems()]
        if not selected_groups:
            iface.messageBar().pushCritical("Error", "Please select at least one layer group.")
            return

        root = QgsProject.instance().layerTreeRoot()
        all_layers = []  # List to hold all layer groups

        for layer_group_name in selected_groups:
            # Sanitize the layer group name to create a valid file name
            sanitized_group_name = re.sub(r'[<>:"/\\|?*]', '_', layer_group_name)

            # Use the selected export path
            if not self.export_path:
                iface.messageBar().pushCritical("Error", "Please select a valid export path.")
                return
            
            output_gpkg = os.path.join(self.export_path, f"{sanitized_group_name}.gpkg")

            # Clear the layers list for the current group
            self.layers = []  # Reset layers for the current group

            # Collect layers from the current group
            selected_group = root.findGroup(layer_group_name)
            if selected_group:
                self.collect_layers_from_group(selected_group, self.layers)

            if not self.layers:
                iface.messageBar().pushCritical("Error", f"No layers found in the group '{layer_group_name}'.")
                continue

            # Prepare group information for JSON
            group_info = {
                "name": layer_group_name,
                "id": f"{sanitized_group_name}_id",  # Example ID, you can customize this
                "type": "group",
                "layers": self.layers
            }
            all_layers.append(group_info)  # Add the group info to the list

            # Set the progress bar maximum to the number of layers being exported
            self.progress_bar.setMaximum(len(self.layers))
            self.progress_bar.setValue(0)  # Reset to 0 before starting export

            # Execute the packaging algorithm
            try:
                for index, layer in enumerate(self.layers):
                    # Update the progress bar for each layer being exported
                    self.progress_bar.setValue(index + 1)  # Update progress bar
                    # Prepare parameters for packaging layers
                    alg_params = {
                        'LAYERS': [layer['id'] for layer in self.layers],  # Pass the list of layer IDs
                        'EXPORT_RELATED_LAYERS': False,  # Don't include related layers
                        'OVERWRITE': True,  # Allow overwriting the file
                        'SAVE_METADATA': True,  # Include metadata in the package
                        'SAVE_STYLES': True,  # Save the layer styles
                        'SELECTED_FEATURES_ONLY': False,  # Include all features
                        'OUTPUT': output_gpkg  # The selected GeoPackage file
                    }

                # Execute the packaging algorithm
                processing.run("native:package", alg_params)
                iface.messageBar().pushInfo("Export Complete", f"Layers successfully exported to {output_gpkg}")
            except Exception as e:
                iface.messageBar().pushCritical("Error", f"Failed to export layers for group '{layer_group_name}': {str(e)}")
                continue
            finally:
                # Ensure the progress bar reaches 100% after export
                self.progress_bar.setValue(len(self.layers))  # Update progress bar to 100% after export

            iface.messageBar().pushInfo("Process Complete", f"Export completed successfully for group '{layer_group_name}'.")

        # Save all layers to a single JSON file after processing all groups
        self.save_layers_to_json(all_layers, layer_group_name)  # Pass the list of all layers and the group name