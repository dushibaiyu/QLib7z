
include($$PWD/7zip/7zip.pri)

INCLUDEPATH += $$PWD/../include/

HEADERS +=  $$PWD/../include/lib7z_facade.h \
    $$PWD/errors.h \
    $$PWD/fileio.h \
    $$PWD/range.h \
    $$PWD/../include/QLib7z_global.h \
    $$PWD/../include/init.h

SOURCES += $$PWD/lib7z_facade.cpp \
    $$PWD/qfileio.cpp \
    $$PWD/init.cpp

win32 {
    LIBS += -loleaut32 -luser32     # 7zip

    win32-g++*:LIBS += -lmpr -luuid
    win32-g++*:QMAKE_CXXFLAGS += -Wno-missing-field-initializers
}

