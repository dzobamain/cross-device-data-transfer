#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QString imagePath = ":src/user/udata/not_foto.jpg";
    QPixmap pix(imagePath);

    if (!pix.isNull()) {
        ui->userFoto->setPixmap(pix.scaled(
            ui->userFoto->size(),
            Qt::KeepAspectRatio,
            Qt::SmoothTransformation
            ));
    } else {
        qDebug() << "Не вдалося завантажити фото з" << imagePath;
    }

}

MainWindow::~MainWindow()
{
    delete ui;
}
