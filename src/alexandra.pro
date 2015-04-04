 ###################################################################
#                                                                   #
#  Alexandra Video Library                                          #
#  Copyright (C) 2014-2015 Eugene Melnik <jeka7js@gmail.com>        #
#                                                                   #
 ###################################################################

CONFIG += release
#CONFIG += debug

TARGET = alexandra
TEMPLATE = app

QT = core gui widgets concurrent
CONFIG += qt warn_on thread
DEFINES += _UNICODE UNICODE
QMAKE_CXXFLAGS += -std=c++11
QMAKE_CXXFLAGS_RELEASE -= -O2
QMAKE_CXXFLAGS_RELEASE += -Ofast -flto

LIBS += -lstdc++ -lpthread
linux:LIBS += -lmediainfo

win32:RC_FILE = $$PWD\win-meta.rc
win32:LIBS += $$PWD\..\lib\MediaInfo.dll
win32:INCLUDEPATH += $$PWD\..\lib\

DESTDIR = ./
MOC_DIR = ./tmp/moc
OBJECTS_DIR = ./tmp/obj
RCC_DIR = ./tmp/rcc
UI_DIR = ./tmp/ui

HEADERS += effects/effectdropshadow.h \
           aboutwindow.h \
           abstractfilmsview.h \
           addfilmwindow.h \
           alexandrasettings.h \
           editfilmwindow.h \
           film.h \
           filminfowindow.h \
           filmslist.h \
           filmsviewgrid.h \
           filmsviewgriditem.h \
           filmsviewlist.h \
           mainwindow.h \
           mediainfo.h \
           searchwindow.h \
           settingswindow.h \
           splashscreen.h \
           statusbar.h \
           toolbar.h \
           version.h

SOURCES += effects/effectdropshadow.cpp \
           aboutwindow.cpp \
           addfilmwindow.cpp \
           alexandrasettings.cpp \
           editfilmwindow.cpp \
           film.cpp \
           filminfowindow.cpp \
           filmslist.cpp \
           filmsviewgrid.cpp \
           filmsviewgriditem.cpp \
           filmsviewlist.cpp \
           main.cpp \
           mainwindow.cpp \
           mediainfo.cpp \
           searchwindow.cpp \
           settingswindow.cpp \
           splashscreen.cpp \
           statusbar.cpp \
           toolbar.cpp

FORMS += aboutwindow.ui \
         addfilmwindow.ui \
         filminfowindow.ui \
         mainwindow.ui \
         searchwindow.ui \
         settingswindow.ui \
         splashscreen.ui

TRANSLATIONS += ../lang/alexandra-cs.ts \
                ../lang/alexandra-ru_RU.ts \
                ../lang/alexandra-uk_UA.ts

RESOURCES = icons.qrc \
            images.qrc \
            lang.qrc
