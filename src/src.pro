TEMPLATE = lib
TARGET = $$qtLibraryTarget(QLib7z)

QT += core

DEFINES += QLIB7Z_LIB
DESTDIR = $$PWD/../lib

include ($$PWD/lib7z.pri)
