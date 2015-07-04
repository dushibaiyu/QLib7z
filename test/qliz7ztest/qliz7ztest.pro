#-------------------------------------------------
#
# Project created by QtCreator 2014-10-22T09:54:22
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = qliz7ztest
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app



SOURCES += main.cpp

#DEFINES += QLIB7Z_NOLIB
#include($$PWD/../../src/lib7z.pri)
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../lib/ -lQLib7z
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../lib/ -lQLib7zd

unix: LIBS += -L$$PWD/../../lib/ -lQLib7z

INCLUDEPATH += $$PWD/../../include
DEPENDPATH += $$PWD/../../include
