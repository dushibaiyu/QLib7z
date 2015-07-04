
QT += core
QT -= gui
QT += testlib


RESOURCES += data.qrc
SOURCES = tst_lib7zfacade.cpp


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../lib/ -lQLib7z
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../lib/ -lQLib7zd



INCLUDEPATH += $$PWD/../../include
DEPENDPATH += $$PWD/../../include

unix: LIBS += -L$$PWD/../../lib/ -lQLib7z

