import os
import json
from qgis.PyQt.QtWidgets import QAction, QToolBar
from qgis.PyQt.QtGui import QIcon
from .gui.package_dialog import PackageDialog
from .gui.loader_dialog import LayerLoaderDialog
from qgis.core import QgsProject

class AuQCBMS:
    def __init__(self, iface):
        self.iface = iface
        self.plugin_dir = os.path.dirname(__file__)
        self.dialog = None
        self.validator_dialog = None
        self.action = None
        self.validator_action = None
        self.toolbar = None

    def initGui(self):
        # Initialize actions
        self.action = self.create_action("Packager", "resources/packager.svg", self.run)
        self.validator_action = self.create_action("Validator", "resources/loader.svg", self.run_validator)
        
        # Set up toolbar
        self.setup_toolbar()

        # Add actions to the plugin menu
        self.iface.addPluginToMenu("&GMD Plugins", self.action)
        self.iface.addPluginToMenu("&GMD Plugins", self.validator_action)

    def unload(self):
        # Remove the actions from the toolbar and the menu
        if self.toolbar:
            self.toolbar.removeAction(self.action)
            self.toolbar.removeAction(self.validator_action)

        self.iface.removePluginMenu("&GMD Plugins", self.action)
        self.iface.removePluginMenu("&GMD Plugins", self.validator_action)

    def run(self):
        if not self.dialog:
            self.dialog = PackageDialog(self.iface, QgsProject.instance(), False)
        self.dialog.show()
        self.dialog.exec_()

    def run_validator(self):
        if not self.validator_dialog:
            self.validator_dialog = LayerLoaderDialog(self.iface)
        self.validator_dialog.show()
        self.validator_dialog.exec_()

    def run_extra(self):
        # Placeholder for extra action functionality
        pass

    def create_action(self, text, icon_name, triggered_method):
        """Utility to create and set up QAction."""
        icon_path = os.path.join(self.plugin_dir, icon_name)
        action = QAction(QIcon(icon_path), text, self.iface.mainWindow())
        action.triggered.connect(triggered_method)
        return action

    def setup_toolbar(self):
        """Sets up a toolbar and adds actions to it."""
        self.toolbar = self.iface.mainWindow().findChild(QToolBar, "GMDPlugins")
        if not self.toolbar:
            self.toolbar = self.iface.addToolBar("GMD Plugins")
            self.toolbar.setObjectName("GMDPlugins")
        
        self.toolbar.addAction(self.action)
        self.toolbar.addAction(self.validator_action)
