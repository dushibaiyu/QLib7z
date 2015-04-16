
QLIB7Z_LIB_PATH = $$PWD/lib

win32-g++*:QMAKE_CXXFLAGS += -Wno-attributes

INCLUDEPATH += \
    $$PWD/7zip
win32:INCLUDEPATH += $$PWD/7zip/win/CPP
unix:INCLUDEPATH += $$PWD/7zip/unix/CPP
