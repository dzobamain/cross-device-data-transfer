/**
 * @file main.cpp
 * @brief main file.
 */

#include <iostream>
#include <fstream>
#include <wx/wx.h>
#include <json.hpp>

#include <util/log.h>
#include "../wxui/mainwindow.h"

class App : public wxApp
{
public:
    bool OnInit() override
    {
        MainWindow *window = new MainWindow();
        window->Show(true);

        return true;
    }
};

wxIMPLEMENT_APP_NO_MAIN(App);

int main(int argc, char **argv)
{
    wxDISABLE_DEBUG_SUPPORT();

    static std::ofstream logfile(DEBUG_PATH, std::ios::out | std::ios::trunc);
    if (!logfile.is_open())
    {
        LOG_FATAL("Cannot open log file: " << DEBUG_PATH);
        return 1;
    }

    std::cout.rdbuf(logfile.rdbuf());
    std::cerr.rdbuf(logfile.rdbuf());

    LOG_OUT("Application started");

    return wxEntry(argc, argv);
}
