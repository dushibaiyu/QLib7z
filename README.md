QLib7z
======
QLib7z 是从Qt Installer Framework中提取出来的7Z SDK的Qt封装，有压缩，解压，多线程job等。

=========
编译需要Qt 5 + （个人测试在Qt 5.4下。）
系统需求：win,linux，等、、、

=========
注意：
使用需要先调用Lib7z::init()初始化。
test下有qlib7ztest的例子可以工作的。
只测试支持*.7z格式。*.zip测试未通过。
其他格式如果您需要请自己测试下。
只在win下测试，请他平台请先测试后使用。

如果是静态编译，需要再src.pro文件里加上：DEFINES += QLIB7Z_NOLIB

zip压缩解压请参见QuaZip：http://quazip.sourceforge.net/

