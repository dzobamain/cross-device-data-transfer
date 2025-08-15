#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <string>
#include <wx/wx.h>
#include <wx/notebook.h>

class MainWindow : public wxFrame {
public:
    MainWindow();

private:
    void InitUI();
};

#endif // MAINWINDOW_H
