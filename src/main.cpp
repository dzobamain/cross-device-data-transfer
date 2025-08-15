/**
 * @file main.cpp
 * @brief main file.
*/

#include <iostream>
#include <user/user_data.h>
#include <wx/wx.h>

#include <wx/wx.h>
#include "../wxui/mainwindow.h"

#include <json.hpp>

class App : public wxApp {
public:
    bool OnInit() override 
    {
        MainWindow* window = new MainWindow();
        window->Show(true);
        
        return true;
    }
};

// started program
wxIMPLEMENT_APP(App);


