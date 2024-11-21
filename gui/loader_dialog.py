from qgis.core import QgsProject, QgsVectorLayer, QgsRasterLayer
from PyQt5.QtWidgets import (
    QDialog,
    QVBoxLayout,
    QPushButton,
    QFileDialog,
    QLabel,
    QMessageBox,
    QProgressBar
)
import os
import re
from osgeo import ogr
import shutil  # Ensure this import is at the top of your file
from PyQt5.uic import loadUiType
from qgis.gui import QgsFileWidget
DialogUi, _ = loadUiType(
    os.path.join(os.path.dirname(__file__), "../ui/loader.ui")
)



class LayerLoaderDialog(QDialog,DialogUi):
    def __init__(self, iface):
        super().__init__()
        self.setupUi(self)  # Load the UI from the .ui file

        # Store the QGIS interface instance
        self.iface = iface
        
        # Set up the layout (removed since it's handled in the UI file)
        self.setWindowTitle("Loader")

        # Set up QgsFileWidget for base layer selection
        self.select_baselayer.setStorageMode(QgsFileWidget.StorageMode.GetDirectory)
        self.select_baselayer.setDialogTitle("Select Export Directory")
        # self.select_baselayer.fileChanged.connect(self.select_folder)  

        # Set up QgsFileWidget for QML folder selection
        self.select_qml.setStorageMode(QgsFileWidget.StorageMode.GetDirectory)
        self.select_qml.setDialogTitle("Select QML Folder")
        self.select_qml.fileChanged.connect(self.select_qml_folder)  

        self.run_button.clicked.connect(self.run_loading_process)

        # Progress bar for loading process
        self.progress_bar.setRange(0, 100)  # Set range for progress bar

        self.selected_folder = ""
        self.qml_folder = ""  # Store the path of the selected QML folder
        self.sf_qml_file = ""  # Store the path for SF QML
        self.gp_qml_file = ""  # Store the path for GP QML

    # def select_folder(self):
    #     """Handle the selection of the export directory."""
    #     self.selected_folder = self.select_baselayer.filePath()  # Get the selected folder from QgsFileWidget
    #     if self.selected_folder:
    #         self.folder_label.setText(f"Selected Folder: {self.selected_folder}")
    #     else:
    #         self.folder_label.setText("No folder selected.")

    def select_qml_folder(self):
        """Handle the selection of the QML folder."""
        self.qml_folder = self.select_qml.filePath()  # Get the selected QML folder from QgsFileWidget
        if self.qml_folder:
            # Set the paths for the specific QML files
            self.sf_qml_file = os.path.join(self.qml_folder, "2. 2024 POPCEN-CBMS Form 8A.qml")
            self.gp_qml_file = os.path.join(self.qml_folder, "3. 2024 POPCEN-CBMS Form 8B.qml")

 
    def run_loading_process(self):
        """Load layers from the selected folder and apply QML styles if layers are loaded."""
        self.selected_folder = self.select_baselayer.filePath()  # Get the selected folder from QgsFileWidget
        if not self.selected_folder:
            QMessageBox.warning(self, "Warning", "Please select a folder first.")
            return
        
        # Validate the selected folder
        if not os.path.exists(self.selected_folder):
            QMessageBox.critical(self, "Error", "Selected folder does not exist.")
            return

        sf_layer, gp_layer, csv_layers, raster_layers = self.load_layers_from_folder(self.selected_folder)
        self.sf_layer = sf_layer  # Store reference to SF layer
        self.gp_layer = gp_layer  # Store reference to GP layer

        # Get the current project instance
        project = QgsProject.instance()

        # Create a new group called "CBMS Form 8"
        root = project.layerTreeRoot()
        cbms_group = root.addGroup("CBMS Form 8")

        # Update progress bar
        self.progress_bar.setValue(10)  # Update progress

        # Add the SF and GP layers to the "CBMS Form 8" group if they are valid
        if sf_layer and sf_layer.isValid():
            project.addMapLayer(sf_layer, False)
            cbms_group.addLayer(sf_layer)
        else:
            QMessageBox.critical(self, "Error", "SF layer failed to load!")

        self.progress_bar.setValue(30)  # Update progress

        if gp_layer and gp_layer.isValid():
            project.addMapLayer(gp_layer, False)
            cbms_group.addLayer(gp_layer)
        else:
            QMessageBox.critical(self, "Error", "GP layer failed to load!")

        self.progress_bar.setValue(50)  # Update progress

        # Optionally, expand the group
        cbms_group.setExpanded(True)

        # Create a new group called "Base Layers"
        base_layers_group = root.addGroup("Base Layers")
        base_layers_group.setExpanded(True)

        # Load layers from the specified GeoPackage
        # self.load_layers_from_geopackage(base_layers_group, os.path.join(self.selected_folder, "01001_maplayers.gpkg"))
          # Dynamically find GeoPackage files with _maplayers or _2024maplayers in their names
        gpkg_files = [f for f in os.listdir(self.selected_folder) if f.endswith('.gpkg') and ('_maplayers' in f or '_2024maplayers' in f)]
        if gpkg_files:
            self.load_layers_from_geopackage(base_layers_group, os.path.join(self.selected_folder, gpkg_files[0]))  # Load the first matching file
        else:
            QMessageBox.warning(self, "Warning", "No GeoPackage files found with the specified patterns.")

        self.progress_bar.setValue(90)  # Update progress

        # Load raster layers with 8-digit identifiers
        for raster_layer in raster_layers:
            if raster_layer.isValid():
                # Add to the Base Layers group first
                base_layers_group.addLayer(raster_layer)  
                project.addMapLayer(raster_layer, False)  # Add to the project (root)

            else:
                print(f"Raster layer {raster_layer.name()} is not valid.")  # Log invalid layers

        self.progress_bar.setValue(70)  # Update progress

        # Create a new group called "Value Relation"
        value_relation_group = root.addGroup("Value Relation")

        # Add the CSV layers to the "Value Relation" group
        for csv_layer in csv_layers:
            if csv_layer.isValid():
                project.addMapLayer(csv_layer, False)
                value_relation_group.addLayer(csv_layer)

        # Optionally, expand the group
        value_relation_group.setExpanded(True)

        # Call the function to execute the renaming
        rename_layers()  # {{ edit_4 }}

        # Final print to confirm structure
        self.progress_bar.setValue(100)  # Update progress
        QMessageBox.information(self, "Success", "Layers imported and organized successfully!")

        # After loading layers, apply QML styles if the layers are valid
        if self.sf_layer and self.sf_layer.isValid() and os.path.exists(self.sf_qml_file):
            self.sf_layer.loadNamedStyle(self.sf_qml_file)
            self.sf_layer.triggerRepaint()  # Refresh the layer to apply the style
            print(f"Applied QML style to SF layer: {self.sf_layer.name()}")  # {{ edit_1 }}

        if self.gp_layer and self.gp_layer.isValid() and os.path.exists(self.gp_qml_file):
            self.gp_layer.loadNamedStyle(self.gp_qml_file)
            self.gp_layer.triggerRepaint()  # Refresh the layer to apply the style
            print(f"Applied QML style to GP layer: {self.gp_layer.name()}")  # {{ edit_2 }}

        # Change data source for the loaded layers
        for layer in [self.sf_layer, self.gp_layer] + csv_layers + raster_layers:
            if layer and layer.isValid():
                # Update the data source to the new path
                new_source = layer.source()  # Get the current source
                layer.setDataSource(new_source, layer.name(), "ogr")
                layer.updateExtents()  # Update extents after changing the data source

        # Auto-save the QGIS project to the selected folder
        project.write(os.path.join(self.selected_folder, "autosave_project.qgz"))  # Save the project

    def load_layers_from_geopackage(self, base_layers_group, gpkg_path):
        """Load all layers from a GeoPackage into the specified group."""
        conn = ogr.Open(gpkg_path)
        if conn is None:
            QMessageBox.critical(self, "Error", f"Failed to open GeoPackage: {gpkg_path}")
            return

        # Iterate through all layers in the GeoPackage
        for i in range(conn.GetLayerCount()):
            layer = conn.GetLayerByIndex(i)
            layer_name = layer.GetName()
            qgis_layer = QgsVectorLayer(gpkg_path + f"|layername={layer_name}", layer_name, 'ogr')
            if qgis_layer.isValid():
                QgsProject.instance().addMapLayer(qgis_layer, False)  # Add to project without adding to the map
                base_layers_group.addLayer(qgis_layer)  # Add to the group
            else:
                print(f"Layer {layer_name} failed to load!")

    def load_layers_from_folder(self, folder_path):
        sf_layer = None
        gp_layer = None
        csv_layers = []
        raster_layers = []

        # Regular expression to match 8-digit identifiers
        eight_digit_pattern = re.compile(r'^\d{8}\.gpkg$')

        # Define the path to the 'files' subfolder within the plugin folder
        BASE_DIR = os.path.dirname(__file__)
        files_folder_path = os.path.join(BASE_DIR, "files")

        # Check if the 'files' folder exists
        if not os.path.exists(files_folder_path):
            QMessageBox.critical(self, "Error", f"The 'files' directory does not exist: {files_folder_path}")
            return  # Exit the function if the directory does not exist

        # Iterate through all files in the 'files' subfolder
        for file in os.listdir(files_folder_path):
            file_path = os.path.join(files_folder_path, file)
            if file.endswith(".shp"):
                if "_SF" in file:
                    sf_layer = QgsVectorLayer(file_path, os.path.splitext(file)[0], "ogr")
                    if not sf_layer.isValid():
                        print(f"Failed to load SF layer from: {file_path}")  # Log the error
                    # Copy related files for _SF
                    for ext in ['shp', 'cpg', 'dbf', 'shx', 'qmd', 'prj']:
                        original_file = os.path.splitext(file)[0] + '.' + ext
                        if os.path.exists(os.path.join(files_folder_path, original_file)):
                            gpkg_files = [f for f in os.listdir(folder_path) if f.endswith('.gpkg') and ('_maplayers' in f or '_2024maplayers' in f)]
                            gpkg_prefix = os.path.splitext(gpkg_files[0])[0][:5] if gpkg_files else ''
                            new_file_name = f"{gpkg_prefix}_SF.{ext}"  # New name for the copied file
                            new_file_path = os.path.join(self.selected_folder, new_file_name)
                            shutil.copy(os.path.join(files_folder_path, original_file), new_file_path)  # Copy the file
                            print(f"Copied and renamed {original_file} to {new_file_path}")  # Log the action
                    # Change data source to the new path (specifically the .shp file)
                    sf_shp_path = os.path.join(self.selected_folder, f"{gpkg_prefix}_SF.shp")  # Ensure this points to the .shp file
                    sf_layer.setDataSource(sf_shp_path, os.path.splitext(file)[0], "ogr")  # {{ edit_1 }}
                    if not sf_layer.isValid():  # {{ edit_2 }}
                        print(f"Failed to set data source for SF layer: {sf_shp_path}")  # Log the error
                elif "_GP" in file:
                    gp_layer = QgsVectorLayer(file_path, os.path.splitext(file)[0], "ogr")
                    if not gp_layer.isValid():
                        print(f"Failed to load GP layer from: {file_path}")  # Log the error
                    # Copy related files for _GP
                    for ext in ['shp', 'cpg', 'dbf', 'shx', 'qmd', 'prj']:
                        original_file = os.path.splitext(file)[0] + '.' + ext
                        if os.path.exists(os.path.join(files_folder_path, original_file)):
                            # Extract the 5-digit prefix from the corresponding gpkg file
                            gpkg_files = [f for f in os.listdir(folder_path) if f.endswith('.gpkg') and ('_maplayers' in f or '_2024maplayers' in f)]
                            gpkg_prefix = os.path.splitext(gpkg_files[0])[0][:5] if gpkg_files else ''  # Get the first 5 digits of the first gpkg file
                            new_file_name = f"{gpkg_prefix}_GP.{ext}"  # New name for the copied file
                            new_file_path = os.path.join(self.selected_folder, new_file_name)
                            shutil.copy(os.path.join(files_folder_path, original_file), new_file_path)
                            print(f"Copied and renamed {original_file} to {new_file_path}")  # Log the action
                    # Change data source to the new path (specifically the .shp file)
                    gp_shp_path = os.path.join(self.selected_folder, f"{gpkg_prefix}_GP.shp")  # Ensure this points to the .shp file
                    gp_layer.setDataSource(gp_shp_path, os.path.splitext(file)[0], "ogr")  # {{ edit_3 }}
                    if not gp_layer.isValid():  # {{ edit_4 }}
                        print(f"Failed to set data source for GP layer: {gp_shp_path}")  # Log the error
            elif file.endswith(".csv"):
                # Load CSV layer with proper URI and UTF-8 encoding
                csv_layer = QgsVectorLayer(f"file:///{file_path}?delimiter=,&encoding=UTF-8", os.path.splitext(file)[0], "delimitedtext")  # {{ edit_1 }}
                if csv_layer.isValid():
                    csv_layers.append(csv_layer)
                    # Copy the CSV file to the selected folder
                    new_csv_path = os.path.join(self.selected_folder, file)  # Define the new path
                    shutil.copy(file_path, new_csv_path)  # Copy the file

                    # Set the data source without encoding since it's already specified in the URI
                    csv_layer.setDataSource(new_csv_path, os.path.splitext(file)[0], "ogr")  # {{ edit_2 }}
                    print(f"Copied CSV file to: {new_csv_path}")  # Log the action
            elif eight_digit_pattern.match(file):
                # Load GeoPackage raster layers
                raster_layer = QgsRasterLayer(file_path, os.path.splitext(file)[0])
                if raster_layer.isValid():
                    raster_layers.append(raster_layer)
                else:
                    print(f"Raster layer {file} failed to load!")

        return sf_layer, gp_layer, csv_layers, raster_layers

# Function to check and rename layers based on specified suffixes
def rename_layers():
    # Define the suffixes to check for and their corresponding new names
    suffixes_to_rename = {
        'bgy': 'bgy',
        'ea': 'ea',
        'bldg_point':'bldg_point',
        'landmark':'landmark',
        'river':'river',
        'block':'block',
    }

    # Get all layers in the project
    layers = QgsProject.instance().mapLayers().values()
    
    for layer in layers:
        layer_name = layer.name()
        renamed = False  # Flag to track if a renaming has occurred
        
        for suffix, new_suffix in suffixes_to_rename.items():
            if suffix in layer_name and not layer_name.endswith(new_suffix):
                # Rename the layer to the new suffix
                new_name = layer_name.split(suffix)[0] + new_suffix
                layer.setName(new_name)
                output = f"Layer renamed to: {new_name}"
                renamed = True
                break  # Break after renaming for this layer
        
        if not renamed:
            output = f"No renaming needed for layer: {layer_name}"
        
        print(output)

# Call the function to execute the renaming
rename_layers()
