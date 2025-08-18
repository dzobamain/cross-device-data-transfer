/**
 * @file main.cpp
 * @brief main file.
*/

#include <iostream>
#include <fstream>
#include <wx/wx.h>
#include <json.hpp>

#include <project/config.h>
#include "../wxui/mainwindow.h"

class App : public wxApp {
public:
    bool OnInit() override 
    {
        MainWindow* window = new MainWindow();
        window->Show(true);
        
        return true;
    }
};

wxIMPLEMENT_APP_NO_MAIN(App);

int main(int argc, char** argv)
{
    wxDISABLE_DEBUG_SUPPORT();

    static std::ofstream logfile(AppConfig::DEBUG_PATH);
    std::cout.rdbuf(logfile.rdbuf());
    std::cerr.rdbuf(logfile.rdbuf());

    return wxEntry(argc, argv);
}
