import os
import json
from qgis.PyQt.QtWidgets import QDialog, QVBoxLayout, QPushButton, QProgressBar
from qgis.core import QgsProject

# Define the base directory as the root of the plugin
BASE_DIR = os.path.dirname(os.path.dirname(__file__))

# Function to load the JSON file containing QML paths from the qml folder
def load_json_file():
    json_file_path = os.path.join(BASE_DIR, 'qml', 'qml_config.json')
    if not os.path.exists(json_file_path):
        print(f"Error: JSON file not found at {json_file_path}")
        return {}
    
    with open(json_file_path, 'r') as f:
        return json.load(f)

# Function to load and apply QML styles to layers
def apply_style(layer, qml_path):
    if not os.path.exists(qml_path):
        print(f"Error: QML file not found at {qml_path}")
        return
    
    success = layer.loadNamedStyle(qml_path)
    if success:
        print(f"Applied style from {qml_path} to layer: {layer.name()}")
    else:
        print(f"Failed to apply style from {qml_path} to layer: {layer.name()}")
    layer.triggerRepaint()

class ValidatorDialog(QDialog):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Validator")

        # Layout setup
        self.layout = QVBoxLayout(self)
        self.setFixedWidth(300)

        # Progress bar to show progress
        self.progress_bar = QProgressBar()
        self.layout.addWidget(self.progress_bar)

        # Button to apply QML styles to layers
        self.run_button = QPushButton("Apply Styles")
        self.run_button.clicked.connect(self.run)
        self.layout.addWidget(self.run_button)

        # Initialize variables
        self.layers = {}

        # Load JSON and layers
        self.load_json_and_layers()

    def load_json_and_layers(self):
        # Define layer keywords
        layer_keywords = ['ea2024', 'bgy', 'bldg_point', 'block', 'landmark', 'road', 'river']
        self.layers = {key: None for key in layer_keywords}

        # Iterate through layers in the QGIS project and assign them based on their name
        for layer in QgsProject.instance().mapLayers().values():
            for keyword in layer_keywords:
                if keyword in layer.name():
                    self.layers[keyword] = layer

    def run(self):
        # Load the QML style configuration
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

        self.progress_bar.setValue(100)
        print("Finished applying QML styles to layers.")
