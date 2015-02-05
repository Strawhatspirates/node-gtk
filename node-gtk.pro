TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG +=link_pkgconfig
PKGCONFIG += gtk+-3.0
SOURCES += main.cpp \
    Gwindow.cpp \
    nodegtk.cpp

HEADERS += \
    Gwindow.h

OTHER_FILES += \
    binding.gyp \
    package.json \
    index.js \
    test.js \
    .gitignore

