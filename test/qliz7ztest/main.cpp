#include <QCoreApplication>
#include "lib7z_facade.h"
#include "init.h"
#include <QDebug>
#include <QDir>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Lib7z::init();

    qDebug() << Lib7z::isSupportedArchive("D:/Code/Git/QLib7z/test/lib7zfacade/data/invalid.7z");
    qDebug() << Lib7z::isSupportedArchive("D:/Code/Git/QLib7z/test/lib7zfacade/data/valid.7z");
    QFile file("D:/Code/Git/QLib7z/test/lib7zfacade/data/valid.7z");
    file.open(QFile::ReadOnly);
    Lib7z::extractArchive(&file,QDir::currentPath());

    QFile fl("D:/brower.zip");
    if (fl.open(QFile::ReadOnly)){

        bool iszip = Lib7z::isSupportedArchive(&fl);
        qDebug() << iszip;
        if (iszip)
        {
            Lib7z::extractArchive(&fl,QDir::currentPath());
        }

        fl.close();
        fl.setFileName("D:/brower.7z");
        if (fl.open(QFile::ReadOnly)) {
            iszip = Lib7z::isSupportedArchive(&fl);
            qDebug() << iszip;
            if (iszip)
            {
                Lib7z::extractArchive(&fl,QDir::currentPath());
            }
        }
    }

    return a.exec();
}
