/**
 * @file main.cpp
 * @brief main file.
*/

#include "qtwindows/mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    MainWindow main_window;
    main_window.setWindowTitle("cross device data transfer");

    main_window.show();

    return app.exec();
}
