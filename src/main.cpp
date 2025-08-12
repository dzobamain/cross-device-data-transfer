/**
 * @file main.cpp
 * @brief main file.
*/

#include <iostream>
#include <user/user_data.h>
#include <wx/wx.h>

#include <wx/wx.h>
#include "../wxui/mainwindow.h"

class App : public wxApp {
public:
    bool OnInit() override {
        MainWindow* window = new MainWindow();
        window->Show(true);
        return true;
    }
};

// (started main())
wxIMPLEMENT_APP(App);


