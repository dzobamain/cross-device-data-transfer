/**
 * @file main.cpp
 * @brief main file.
*/

#include <QApplication>
#include <qtwindow/mainwindow.h>

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    MainWindow w;
    w.show();
    return app.exec();
}

