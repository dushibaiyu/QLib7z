
win32 {
    7ZIP_BASE=$$PWD/win
    INCLUDEPATH += $$7ZIP_BASE/C $$7ZIP_BASE/CPP
    DEFINES += WIN_LONG_PATH _UNICODE _NO_CRYPTO
    QMAKE_CXXFLAGS_RELEASE -= -Zc:strictStrings
    QMAKE_CXXFLAGS_RELEASE_WITH_DEBUGINFO -= -Zc:strictStrings
}

unix {
    7ZIP_BASE=$$PWD/unix
    INCLUDEPATH += \
        $$7ZIP_BASE/C \
        $$7ZIP_BASE/CPP \
        $$7ZIP_BASE/CPP/Common \
        $$7ZIP_BASE/CPP/myWindows \
        $$7ZIP_BASE/CPP/include_windows

    macx:DEFINES += ENV_MACOSX
    DEFINES += _FILE_OFFSET_BITS=64 _LARGEFILE_SOURCE NDEBUG _REENTRANT ENV_UNIX UNICODE _UNICODE _NO_CRYPTO
}

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
