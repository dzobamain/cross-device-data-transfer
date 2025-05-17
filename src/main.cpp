/*
 * @file main.cpp
 * @brief main file.
*/

#include "qtwindows/mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
