import os
import json
from qgis.PyQt.QtWidgets import QAction, QFileDialog, QDialog, QToolBar
from qgis.PyQt.QtGui import QIcon
from qgis.core import QgsProject
from .auqcbms_dialog import AuQCBMSDialog

class AuQCBMS:
    def __init__(self, iface):
        self.iface = iface
        self.plugin_dir = os.path.dirname(__file__)
        self.dialog = None
        self.action = None
        self.toolbar = None

    def initGui(self):
        icon_path = os.path.join(self.plugin_dir, 'icon.png')
        
        # Create the action
        self.action = QAction(QIcon(icon_path), "AuQCBMS", self.iface.mainWindow())
        self.action.triggered.connect(self.run)
        
        # Create or get the custom toolbar
        self.toolbar = self.iface.mainWindow().findChild(QToolBar, "GMDPlugins")
        if not self.toolbar:
            self.toolbar = self.iface.addToolBar("GMD Plugins")
            self.toolbar.setObjectName("GMDPlugins")
        
        # Add the action to the toolbar and the menu
        self.toolbar.addAction(self.action)  # Add action to the custom toolbar
        self.iface.addPluginToMenu("&GMD Plugins", self.action)

    def unload(self):
        # Remove the action from the toolbar and the menu
        if self.action:
            self.toolbar.removeAction(self.action)
            self.iface.removePluginMenu("&GMD Plugins", self.action)

    def run(self):
        if self.dialog is None:
            self.dialog = AuQCBMSDialog()
        self.dialog.show()
        self.dialog.exec_()
