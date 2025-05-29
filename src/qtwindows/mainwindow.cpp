#include <string>

#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    ConstructorByProfile(ui, "/Users/volodymyrdzoba/Pictures/goose.jpg", "user_name");

}

void ConstructorByProfile(Ui::MainWindow *ui, const std::string& foto_path, const std::string& user_name)
{
    bool by_def_foto;
    bool by_def_user_name;
    QPixmap pix(QString::fromStdString(foto_path));

    if (!pix.isNull()) {
        ui->userFoto->setPixmap(pix.scaled(
            ui->userFoto->size(),
            Qt::KeepAspectRatio,
            Qt::SmoothTransformation));
        by_def_foto = false;
    }
    else {
        qDebug() << "Error: Не вдалося завантажити зображення з" << QString::fromStdString(foto_path);
        by_def_foto = true;
    }
}

MainWindow::~MainWindow()
{
    delete ui;
}
