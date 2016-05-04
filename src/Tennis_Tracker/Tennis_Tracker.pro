TEMPLATE = app

QT += qml quick

CONFIG += c++11

SOURCES += main.cpp \
    score_board.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = QtCharts 2.0

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    ../../img/Tennis_Court_diagram.png

HEADERS += \
    score_board.h
