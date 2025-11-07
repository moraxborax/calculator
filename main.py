from __future__ import annotations

import sys

from PySide6.QtCore import QObject, Slot
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine, QmlElement
from PySide6.QtQuickControls2 import QQuickStyle
# sorry i used so much qt's code

QML_IMPORT_NAME = "io.qt.textproperties"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement
class Bridge(QObject):
    
    @Slot(str, result=str)
    def eval(self, s):
        message = ""
        try:
            message=str(eval(s))
        except Exception:
            message = "Error"
        return message
    
    @Slot(str, str, result=str)
    def append(self, s:str, s_append:str):
        return f"{s}{s_append}"
    @Slot(str, result=str)
    def pop(self, s):
        return s[0:len(s)-1]
    

    
        
    



if __name__ == '__main__':
    
    app = QGuiApplication(sys.argv)
    QQuickStyle.setStyle("Material")
    engine = QQmlApplicationEngine()
    # Add the current directory to the import paths and load the main module.
    engine.addImportPath(sys.path[0])
    engine.loadFromModule("qml", "Main")

    if not engine.rootObjects():
        sys.exit(-1)

    exit_code = app.exec()
    del engine
    sys.exit(exit_code)