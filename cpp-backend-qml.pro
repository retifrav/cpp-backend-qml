QT += qml

CONFIG += c++11

SOURCES += main.cpp \
    backend.cpp

RESOURCES += qml.qrc

RC_ICONS = qt.ico

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    backend.h
