TEMPLATE = lib
TARGET = $$qtLibraryTarget(QLib7z)

DEFINES += QLIB7Z_LIB

QT += core

HEADERS +=  lib7z_facade.h \
    errors.h \
    fileio.h \
    range.h \
    QLib7z_global.h

SOURCES +=    lib7z_facade.cpp \ 
    fileio.cpp

LIBS += -l7z

win32 {
    LIBS += -loleaut32 -luser32     # 7zip
    
    win32-g++*:LIBS += -lmpr -luuid
    win32-g++*:QMAKE_CXXFLAGS += -Wno-missing-field-initializers
}

include(libs/7zip/7zip.pri)
