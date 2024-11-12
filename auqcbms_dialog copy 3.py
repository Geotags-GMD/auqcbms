import os
import json
from qgis.PyQt.QtWidgets import (
    QDialog, QVBoxLayout, QComboBox, QPushButton,
    QFileDialog, QProgressBar, QLabel
)
from qgis.core import QgsProject, QgsProcessingFeedback, QgsLayerTreeGroup, QgsLayerTreeLayer
import processing

# Function to load the JSON file containing QML paths
def load_json_file(file_path):
    with open(file_path, 'r') as f:
        return json.load(f)

# Function to load and apply QML styles to layers
def apply_style(layer, qml_path):
    success = layer.loadNamedStyle(qml_path)
    if success:
        print(f"Applied style from {qml_path} to layer: {layer.name()}")
    else:
        print(f"Failed to apply style from {qml_path} to layer: {layer.name()}")
    layer.triggerRepaint()

# Function to export selected features as GeoPackage
def export_selected_features(layers, layer_group_name, output_gpkg):
    layer_group = QgsProject.instance().layerTreeRoot().findGroup(layer_group_name)
    if not layer_group:
        print(f"No layer group found with the name: {layer_group_name}")
        return

    selected_layers = []
    for layer in layer_group.children():
        if isinstance(layer, QgsLayerTreeLayer) and layer.layer() in layers.values():
            selected_layers.append(layer.layer())

    if not selected_layers:
        print("No layers found for the selected group.")
        return

    alg_params = {
        'LAYERS': selected_layers,
        'EXPORT_RELATED_LAYERS': False,
        'OVERWRITE': True,
        'SAVE_METADATA': True,
        'SAVE_STYLES': True,
        'SELECTED_FEATURES_ONLY': True,
        'OUTPUT': output_gpkg
    }

    try:
        feedback = QgsProcessingFeedback()
        results = processing.run("native:package", alg_params, feedback)
        if results:
            print(f"Export completed: {results['OUTPUT']}")
    except Exception as e:
        print(f"Error: {str(e)}")


class AuQCBMSDialog(QDialog):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("AUQCBMS")

        # Layout setup
        self.layout = QVBoxLayout(self)

        # Button to select QML folder
        self.select_path_button = QPushButton("Select QML Folder")
        self.select_path_button.clicked.connect(self.select_folder)
        self.layout.addWidget(self.select_path_button)

        # Label to show selected QML path
        self.qml_path_label = QLabel("Selected QML Path: None")
        self.layout.addWidget(self.qml_path_label)

        # Button to select export folder
        self.select_export_path_button = QPushButton("Select Export Folder")
        self.select_export_path_button.clicked.connect(self.select_export_folder)
        self.layout.addWidget(self.select_export_path_button)

        # Label to show selected export path
        self.export_path_label = QLabel("Selected Export Path: None")
        self.layout.addWidget(self.export_path_label)

        # Dropdown for geocode selection
        self.geocode_dropdown = QComboBox()
        self.layout.addWidget(self.geocode_dropdown)

        # Dropdown for layer group selection
        self.layer_group_dropdown = QComboBox()
        self.layer_group_dropdown.currentIndexChanged.connect(self.reset_filter_on_layer_group_change)
        self.layout.addWidget(self.layer_group_dropdown)

        # Progress bar to show progress
        self.progress_bar = QProgressBar()
        self.layout.addWidget(self.progress_bar)

        # Button to run the process
        self.run_button = QPushButton("Run")
        self.run_button.clicked.connect(self.run)
        self.layout.addWidget(self.run_button)

        # Button to export selected features
        self.export_button = QPushButton("Export")
        self.export_button.clicked.connect(self.export_features)
        self.layout.addWidget(self.export_button)

        # Initialize variables
        self.qml_folder_path = ""
        self.export_folder_path = ""
        self.layers = {}

    def reset_filter_on_layer_group_change(self):
        # Clear current geocode options and reset layer filters
        self.geocode_dropdown.clear()
        for layer in self.layers.values():
            if layer is not None:
                layer.setSubsetString("")  # Reset filters

        # Update geocode dropdown
        self.update_geocode_dropdown()

    def update_geocode_dropdown(self):
        # Clear the dropdown before updating
        self.geocode_dropdown.clear()

        # Get the selected layer group name
        selected_group_name = self.layer_group_dropdown.currentText()

        # Find the layer group in the project
        layer_group = QgsProject.instance().layerTreeRoot().findGroup(selected_group_name)

        if not layer_group:
            print(f"Layer group {selected_group_name} not found.")
            return

        # Iterate through the layers in the selected group to find the one ending with '_bgy'
        bgy_layer = None
        for layer_item in layer_group.children():
            if isinstance(layer_item, QgsLayerTreeLayer):
                layer = layer_item.layer()
                if layer and layer.name().endswith('_bgy'):  # Check if layer name ends with '_bgy'
                    bgy_layer = layer
                    break  # Stop once we find the layer we're looking for

        if not bgy_layer:
            print("No layer ending with '_bgy' found in the selected layer group.")
            return

        # Ensure the layer has the 'geocode' field
        if 'geocode' not in bgy_layer.fields().names():
            print("The '_bgy' layer does not contain a 'geocode' field.")
            return

        # Get unique geocode values from the '_bgy' layer
        geocode_index = bgy_layer.fields().indexOf('geocode')
        unique_geocodes = bgy_layer.uniqueValues(geocode_index)

        # Sort and populate the dropdown with unique geocodes
        sorted_geocodes = sorted(unique_geocodes, key=str)  # Sort as strings to keep format
        if sorted_geocodes:
            self.geocode_dropdown.addItems([str(gc) for gc in sorted_geocodes])  # Ensure displayed as strings
            print(f"Loaded {len(sorted_geocodes)} unique geocodes from the '_bgy' layer.")
        else:
            print("No valid geocodes found in the '_bgy' layer.")




    def select_folder(self):
        self.qml_folder_path = QFileDialog.getExistingDirectory(self, "Select QML Folder")
        self.qml_path_label.setText(f"Selected QML Path: {self.qml_folder_path}")
        self.load_json_and_layers()

    def select_export_folder(self):
        self.export_folder_path = QFileDialog.getExistingDirectory(self, "Select Export Folder")
        self.export_path_label.setText(f"Selected Export Path: {self.export_folder_path}")

    def load_json_and_layers(self):
        json_file_path = os.path.join(self.qml_folder_path, "qml_config.json")
        qml_data = load_json_file(json_file_path)

        layer_keywords = ['ea2024', 'bgy', 'bldg_point', 'block', 'landmark', 'road', 'river']
        self.layers = {key: None for key in layer_keywords}

        for layer in QgsProject.instance().mapLayers().values():
            for keyword in layer_keywords:
                if keyword in layer.name():
                    self.layers[keyword] = layer

        self.layer_group_dropdown.clear()
        layer_groups = [layer.name() for layer in QgsProject.instance().layerTreeRoot().children() if isinstance(layer, QgsLayerTreeGroup)]
        self.layer_group_dropdown.addItems(sorted(layer_groups))

    def filter_layers(self, selected_geocode):
        print(f"Filtering layers with geocode: {selected_geocode}")
        if 'bgy' in self.layers and self.layers['bgy'] is not None:
            self.layers['bgy'].setSubsetString(f"geocode = '{selected_geocode}'")
            print(f"Applied filter on 'bgy' layer: {self.layers['bgy'].featureCount()} features remain")

        first_8_digits = selected_geocode[:8]

        if 'ea2024' in self.layers and self.layers['ea2024'] is not None:
            self.layers['ea2024'].setSubsetString(f"geocode LIKE '{first_8_digits}%'")
            print(f"Applied filter on 'ea2024' layer: {self.layers['ea2024'].featureCount()} features remain")

        if 'bldg_point' in self.layers and self.layers['bldg_point'] is not None:
            self.layers['bldg_point'].setSubsetString(f"geocode LIKE '{first_8_digits}%'")
            print(f"Applied filter on 'bldg_point' layer: {self.layers['bldg_point'].featureCount()} features remain")

    def run(self):
        if not self.qml_folder_path:
            print("No QML folder selected.")
            return

        json_file_path = os.path.join(self.qml_folder_path, "qml_config.json")
        qml_data = load_json_file(json_file_path)

        layer_order = qml_data['layer_order']
        for index, layer_name in enumerate(layer_order):
            layer = self.layers.get(layer_name)
            if layer is not None:
                qml_file = qml_data['qml_files'].get(layer_name)
                if qml_file:
                    qml_path = os.path.join(self.qml_folder_path, qml_file)
                    apply_style(layer, qml_path)
                    self.progress_bar.setValue((index + 1) * (100 // len(layer_order)))

        selected_geocode = self.geocode_dropdown.currentText()
        self.filter_layers(selected_geocode)
        self.progress_bar.setValue(100)

    def export_features(self):
        selected_geocode = self.geocode_dropdown.currentText()
        if not selected_geocode:
            print("No geocode selected.")
            return

        self.filter_layers(selected_geocode)

        geocode_folder = os.path.join(self.export_folder_path, selected_geocode)
        os.makedirs(geocode_folder, exist_ok=True)

        output_gpkg = os.path.join(geocode_folder, f"{selected_geocode}.gpkg")
        export_selected_features(self.layers, self.layer_group_dropdown.currentText(), output_gpkg)

