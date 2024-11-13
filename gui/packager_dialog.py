import os
import json
from qgis.PyQt.QtWidgets import (
    QDialog, QVBoxLayout, QComboBox, QPushButton,
    QProgressBar, QLabel, QMessageBox,QLineEdit
)
from qgis.PyQt.QtCore import Qt
from qgis.PyQt import uic
from qgis.core import QgsProject, QgsProcessingFeedback, QgsLayerTreeGroup, QgsLayerTreeLayer, QgsSpatialIndex, QgsFeatureRequest, QgsVectorLayer
from qgis.gui import QgsFileWidget
import processing
import shutil

BASE_DIR = os.path.dirname(os.path.dirname(__file__))

# Function to load the JSON file containing QML paths from the built-in qml folder
def load_json_file():
    json_file_path = os.path.join(os.path.dirname(__file__), '../qml', 'qml_config.json')
    with open(json_file_path, 'r') as f:
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


def load_layer_geotagging(self, shapefile_name, layer_name):
    shapefile_path = os.path.join(os.path.dirname(__file__), 'shp', shapefile_name)
    layer = QgsVectorLayer(shapefile_path, layer_name, 'ogr')
    
    if not layer.isValid():
        print(f"Failed to load the layer: {shapefile_path}")
    else:
        # Check if the layer is already in the project
        existing_layer = QgsProject.instance().mapLayersByName(layer_name)
        
        if existing_layer:
            print(f"The layer '{layer_name}' already exists in the project.")
        else:
            # Add the layer to the project
            QgsProject.instance().addMapLayer(layer)
            print(f"Layer loaded successfully: {shapefile_path}")
        
            # Find or create the 'CBMS Form' group
            root = QgsProject.instance().layerTreeRoot()
            cbms_group = root.findGroup('CBMS Form')
            
            if not cbms_group:
                cbms_group = root.addGroup('CBMS Form')
                print("Group 'CBMS Form' created.")
            
            # Find the layer node and add it to the group
            layer_node = root.findLayer(layer.id())
            if layer_node:
                # Check if the layer is already in the group
                if not cbms_group.findLayer(layer.id()):
                    cbms_group.addChildNode(layer_node)
                    print(f"Layer '{layer_name}' added to 'CBMS Form' group.")
                else:
                    print(f"Layer '{layer_name}' is already in the 'CBMS Form' group.")
            else:
                print(f"Layer node for '{layer_name}' not found.")



class AuQCBMSDialog(QDialog):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Packager")

        # Layout setup
        self.layout = QVBoxLayout(self)
        self.setFixedWidth(300)

        self.layer_group_name = ""
       
        # QgsFileWidget to select export folder
        self.export_path_widget = QgsFileWidget()
        self.export_path_widget.setStorageMode(QgsFileWidget.StorageMode.GetDirectory)
        self.export_path_widget.setDialogTitle("Select Export Directory")
        self.export_path_widget.fileChanged.connect(self.update_export_path_label)
        self.layout.addWidget(QLabel("Export Directory:"))
        self.layout.addWidget(self.export_path_widget)

        # Get the input field and disable it, but leave the button enabled
        # input_field = self.export_path_widget.findChild(QLineEdit)
        # if input_field:
        #     input_field.setEnabled(False)


        self.shp_folder_path = os.path.join(os.path.dirname(__file__), 'shp')
        self.shp_file_name_gp = 'temp_GP.shp'  # Example shapefile names
        self.shp_file_name_sf = 'temp_SF.shp'

        # Dropdown for layer group selection
        self.layer_group_dropdown = QComboBox()
        self.layer_group_dropdown.currentIndexChanged.connect(self.reset_filter_on_layer_group_change)
        self.layout.addWidget(self.layer_group_dropdown)

        self.layout.addWidget(QLabel("Select Bgy: "))

        # Dropdown for geocode selection
        self.geocode_dropdown = QComboBox()
        self.layout.addWidget(self.geocode_dropdown)

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
        self.export_folder_path = ""
        self.layers = {}

        # Load JSON and layers
        self.load_json_and_layers()
        

    def update_export_path_label(self):
        self.export_folder_path = self.export_path_widget.filePath()
        self.layer_group_name = self.layer_group_dropdown.currentText()

    def reset_filter_on_layer_group_change(self):
        self.geocode_dropdown.clear()
        for layer in self.layers.values():
            if layer is not None:
                layer.setSubsetString("")
        self.update_geocode_dropdown()

    def update_geocode_dropdown(self):
        self.geocode_dropdown.clear()

        selected_group_name = self.layer_group_dropdown.currentText()
        layer_group = QgsProject.instance().layerTreeRoot().findGroup(selected_group_name)

        if not layer_group:
            print(f"Layer group {selected_group_name} not found.")
            return

        bgy_layer = None
        for layer_item in layer_group.children():
            if isinstance(layer_item, QgsLayerTreeLayer):
                layer = layer_item.layer()
                if layer and layer.name().endswith('_bgy'):
                    bgy_layer = layer
                    break

        if not bgy_layer or 'geocode' not in bgy_layer.fields().names():
            print("The '_bgy' layer does not contain a 'geocode' field.")
            return

        geocode_index = bgy_layer.fields().indexOf('geocode')
        unique_geocodes = bgy_layer.uniqueValues(geocode_index)
        sorted_geocodes = sorted(unique_geocodes, key=str)
        if sorted_geocodes:
            self.geocode_dropdown.addItems([str(gc) for gc in sorted_geocodes])
            print(f"Loaded {len(sorted_geocodes)} unique geocodes from the '_bgy' layer.")
        else:
            print("No valid geocodes found in the '_bgy' layer.")

    def load_json_and_layers(self):
        qml_data = load_json_file()

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

        first_8_digits = selected_geocode[:8]

        if 'ea2024' in self.layers and self.layers['ea2024'] is not None:
            self.layers['ea2024'].setSubsetString(f"geocode LIKE '{first_8_digits}%'")

        if 'bldg_point' in self.layers and self.layers['bldg_point'] is not None:
            self.layers['bldg_point'].setSubsetString(f"geocode LIKE '{first_8_digits}%'")

        if 'river' in self.layers and self.layers['river'] is not None:
            self.layers['river'].setSubsetString(f"geocode LIKE '{first_8_digits}%'")
            

    def run(self):

        qml_data = load_json_file()
        if not qml_data:
            print("Error: QML data is empty. Check the JSON file.")
            return

        # Layer order as specified in the JSON file
        layer_order = qml_data.get('layer_order', [])
        for index, layer_name in enumerate(layer_order):
            layer = self.layers.get(layer_name)
            if layer is not None:
                qml_file = qml_data.get('qml_files', {}).get(layer_name)
                if qml_file:
                    qml_path = os.path.join(BASE_DIR, 'qml', qml_file)
                    apply_style(layer, qml_path)
                    self.progress_bar.setValue((index + 1) * (100 // len(layer_order)))
                else:
                    print(f"Warning: No QML file defined for layer '{layer_name}' in JSON configuration.")
            else:
                print(f"Warning: No matching layer found for '{layer_name}'.")

        selected_geocode = self.geocode_dropdown.currentText()
        self.filter_layers(selected_geocode)
        self.progress_bar.setValue(100)
        self.select_by_location()

    def export_features(self):
        # Get the selected geocode from the dropdown
        selected_geocode = self.geocode_dropdown.currentText()

        # Validation check for selected geocode
        if not selected_geocode:
            QMessageBox.warning(self, "Missing Geocode", "Please select a valid geocode before exporting.")
            return

        # Create a directory based on the selected geocode
        geocode_folder = os.path.join(self.export_folder_path, selected_geocode)
        os.makedirs(geocode_folder, exist_ok=True)  # Create the folder if it does not exist

        # Define the output GeoPackage path using the geocode folder
        output_gpkg = os.path.join(geocode_folder, f"{selected_geocode}.gpkg")

        # Check if the file already exists and ask for confirmation to overwrite
        if os.path.exists(output_gpkg):
            overwrite = QMessageBox.question(self, "Overwrite File",
                                            f"{output_gpkg} already exists. Do you want to overwrite it?",
                                            QMessageBox.Yes | QMessageBox.No,
                                            QMessageBox.No)
            if overwrite == QMessageBox.No:
                return  # Exit if the user chooses not to overwrite

        # Perform select by location for river, block, and road layers
        self.select_by_location()

        # Proceed with exporting selected features
        layer_group_name = self.layer_group_dropdown.currentText()
        export_selected_features(self.layers, layer_group_name, output_gpkg)

        # Update the data source of each layer to the exported GeoPackage
        for layer_name, layer in self.layers.items():
            if layer is not None:
                # Construct the new data source path
                new_data_source = f"{output_gpkg}|layername={layer.name()}"
                # Change the layer's data source
                layer.setDataSource(new_data_source, layer.name(), "ogr")
                print(f"Updated data source for {layer.name()} to {new_data_source}")

        # Save the current QGIS project
        project_path = os.path.join(geocode_folder, f"{selected_geocode}.qgz")

        # To avoid opening the project, just save it silently
        success = QgsProject.instance().write(project_path)
        if success:
            print(f"Project saved successfully at {project_path}")
            QMessageBox.information(self, "Export Successful", f"Features exported successfully to {output_gpkg} and project saved at {project_path}.")
        else:
            print(f"Failed to save the project at {project_path}")
            QMessageBox.warning(self, "Export Failed", f"Failed to save the project at {project_path}.")


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








