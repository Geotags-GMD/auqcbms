import os
from qgis.core import QgsProject, QgsLayerTreeGroup
from qgis.PyQt.QtWidgets import (
    QDialog, QVBoxLayout, QComboBox, QPushButton,
    QProgressBar, QLabel, QMessageBox
)
from qgis.PyQt.uic import loadUiType

DialogUi, _ = loadUiType(
    os.path.join(os.path.dirname(__file__), "../ui/filter_qp.ui")  # Path to UI file
)

# Function to filter layers based on selected geocode and suffix criteria
def filter_layers(layers, selected_geocode):
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
            elif layer.name().endswith('_river'):
                layer.setSubsetString(f"geocode LIKE '{first_8_digits}%'")
            elif layer.name().endswith('_landmark'):
                layer.setSubsetString(f"geocode = '{first_8_digits}'")
            else:
                QMessageBox.warning(None, "Unsupported Layer", f"Layer '{layer.name()}' does not match any known suffixes.")
        else:
            QMessageBox.warning(None, "Layer Invalid", f"The layer '{layer_key}' is not valid or does not exist.")

# Function to reset filters on all layers
def reset_filters(layers):
    for layer_key, layer in layers.items():
        if layer is not None and layer.isValid():
            layer.setSubsetString("")  # Clear the filter
        else:
            QMessageBox.warning(None, "Layer Invalid", f"The layer '{layer_key}' is not valid or does not exist.")

# Dialog class for the UI
class QGISLayerDialog(QDialog, DialogUi):
    def __init__(self,parent=None):
        super(QGISLayerDialog, self).__init__(parent=parent)
        self.setupUi(self)

        self.group_dropdown.currentIndexChanged.connect(self.populate_layers_dropdown)


        self.layer_dropdown.currentIndexChanged.connect(self.populate_geocode_dropdown)


        self.group_dropdown.currentIndexChanged.connect(self.populate_layers_dropdown)



        self.run_button.clicked.connect(self.run)


        self.reset_button.clicked.connect(self.reset_filter)


        # Initialize variables
        self.layers = {}

        # Load groups on dialog initialization
        self.load_layer_groups()

    def load_layer_groups(self):
        # Populate the group dropdown with layer groups in the project
        self.group_dropdown.clear()
        root = QgsProject.instance().layerTreeRoot()
        groups = [child for child in root.children() if isinstance(child, QgsLayerTreeGroup)]
        for group in groups:
            self.group_dropdown.addItem(group.name(), group)

    def populate_layers_dropdown(self):
        # Get the selected group
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

    def populate_geocode_dropdown(self):
        # Get the selected layer
        selected_layer = self.layer_dropdown.currentData()
        self.geocode_dropdown.clear()

        if selected_layer and selected_layer.name().endswith('_bgy'):
            # Populate geocode dropdown with all unique geocodes from the layer, without filtering
            geocode_index = selected_layer.fields().indexOf('geocode')
            if geocode_index != -1:
                geocodes = selected_layer.uniqueValues(geocode_index)
                self.geocode_dropdown.addItems(sorted(geocodes))
                print(f"Geocode values loaded for layer: {selected_layer.name()}")
            else:
                print(f"No 'geocode' field found in layer: {selected_layer.name()}")

    def run(self):
        # Get the selected layer and geocode
        selected_layer = self.layer_dropdown.currentData()
        selected_geocode = self.geocode_dropdown.currentText()
        if not selected_layer or not selected_geocode:
            print("No layer or geocode selected.")
            return

        # Load predefined layer mapping based on known suffix patterns
        self.layers = {
            layer.name(): layer for layer in QgsProject.instance().mapLayers().values()
            if layer.name().endswith(('_bgy', '_ea2024', '_bldg_point', '_river','_landmark'))
        }

        # Filter based on geocode for other layers while keeping the geocode dropdown intact
        filter_layers(self.layers, selected_geocode)
        self.progress_bar.setValue(100)  # Complete

    def reset_filter(self):
        # Load predefined layer mapping based on known suffix patterns
        self.layers = {
            layer.name(): layer for layer in QgsProject.instance().mapLayers().values()
            if layer.name().endswith(('_bgy', '_ea2024', '_bldg_point', '_river','_landmark'))
        }

        # Reset filters for all layers
        reset_filters(self.layers)
        self.progress_bar.setValue(0)  # Reset progress bar to 0

# # Show the dialog
# dialog = QGISLayerDialog()
# dialog.exec_()
