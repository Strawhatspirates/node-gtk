TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG +=link_pkgconfig
PKGCONFIG += gtk+-3.0
SOURCES += main.cpp \
    Gwindow.cpp

HEADERS += \
    Gwindow.h

