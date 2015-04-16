TEMPLATE = lib
TARGET = $$qtLibraryTarget(QLib7z)

#DEFINES += QLIB7Z_LIB
include(../7zip/7zip.pri)
include(../lib7z.pri)

DESTDIR = $$QLIB7Z_LIB_PATH
DEFINES += QLIB7Z_LIB

QT += core

INCLUDEPATH += $$PWD/../include/

HEADERS +=  $$PWD/../include/lib7z_facade.h \
    $$PWD/errors.h \
    $$PWD/fileio.h \
    $$PWD/range.h \
    $$PWD/../include/QLib7z_global.h \
    $$PWD/../include/init.h

SOURCES +=    lib7z_facade.cpp \
    fileio.cpp \
    init.cpp

LIBS += -L$$QLIB7Z_LIB_PATH/ -l7z

win32-msvc*:POST_TARGETDEPS +=  $$QLIB7Z_LIB_PATH/7z.lib
win32-g++*:POST_TARGETDEPS +=  $$QLIB7Z_LIB_PATH/lib7z.a
unix:POST_TARGETDEPS +=  $$QLIB7Z_LIB_PATH/lib7z.a

win32 {
    LIBS += -loleaut32 -luser32     # 7zip

    win32-g++*:LIBS += -lmpr -luuid
    win32-g++*:QMAKE_CXXFLAGS += -Wno-missing-field-initializers
}

