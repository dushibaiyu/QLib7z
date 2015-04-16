QT = core
TARGET = 7z
TEMPLATE = lib
CONFIG += staticlib

include(../lib7z.pri)
include(7zip.pri)

DESTDIR = $$QLIB7Z_LIB_PATH

win32 {
    DEFINES += _CRT_SECURE_NO_WARNINGS
    win32-g++*:QMAKE_CXXFLAGS += -w -fvisibility=hidden
    CONFIG += no_batch # this is needed because we have a same named *.c and *.cpp file -> 7in
    include($$7ZIP_BASE/win.pri)    #this is 7zip
}

unix {
    QMAKE_CFLAGS += -w
    QMAKE_CXXFLAGS += -fvisibility=hidden -w
    include($$7ZIP_BASE/unix.pri)   #this is p7zip
}
