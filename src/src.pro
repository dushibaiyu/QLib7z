TEMPLATE = lib
TARGET = $$qtLibraryTarget(QLib7z)

#DEFINES += QLIB7Z_LIB
include(../7zip/7zip.pri)
include(../installerfw.pri)

DESTDIR = $$IFW_LIB_PATH
DLLDESTDIR = $$IFW_APP_PATH
DEFINES += QLIB7Z_LIB

QT += core

HEADERS +=  lib7z_facade.h \
    errors.h \
    fileio.h \
    range.h \
    QLib7z_global.h \
    init.h

SOURCES +=    lib7z_facade.cpp \ 
    fileio.cpp \
    init.cpp

LIBS += -L$$IFW_LIB_PATH/ -l7z

win32-msvc*:POST_TARGETDEPS +=  $$IFW_LIB_PATH/7z.lib
win32-g++*:POST_TARGETDEPS +=  $$IFW_LIB_PATH/lib7z.a
unix:POST_TARGETDEPS +=  $$IFW_LIB_PATH/lib7z.a

win32 {
    LIBS += -loleaut32 -luser32     # 7zip
    
    win32-g++*:LIBS += -lmpr -luuid
    win32-g++*:QMAKE_CXXFLAGS += -Wno-missing-field-initializers
}

