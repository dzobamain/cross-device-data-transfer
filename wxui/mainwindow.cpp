#include <wx/wx.h>
#include <wx/notebook.h>

#include "mainwindow.h"
#include "uiconfig.h"
#include "wxPanelForTab.h"
#include <project/config.h>
#include <util/log.h>

MainWindow::MainWindow() 
    : wxFrame(nullptr, wxID_ANY, wxString(AppConfig::APP_NAME), wxDefaultPosition, wxSize(UiConfig::WINDOW_WIDTH, UiConfig::WINDOW_HEIGHT))
{   
    LOG_OUT("Creating main window");

    try {
        wxInitAllImageHandlers(); // Enable support for PNG, JPEG / JPG, BMP, GIF, TIFF, XPM
        LOG_OUT("Initialized all image handlers");

        InitUI();
        LOG_OUT("UI initialized successfully");

        SetMinSize(wxSize(UiConfig::MIN_WINDOW_WIDTH, UiConfig::MIN_WINDOW_HEIGHT));
    } 
    catch (const std::exception& e) {
        LOG_FATAL("Exception in MainWindow constructor: " << e.what());
    } 
    catch (...) {
        LOG_FATAL("Unknown exception in MainWindow constructor");
    }
}

void MainWindow::InitUI()
{
    LOG_OUT("Initializing UI");

    try {
        wxNotebook* notebook = new wxNotebook(this, wxID_ANY);

        notebook->AddPage(new wxPanelForTab(UiConfig::TAB_SETTINGS, notebook), "Settings");
        notebook->AddPage(new wxPanelForTab(UiConfig::TAB_SEND, notebook), "Send");
        notebook->AddPage(new wxPanelForTab(UiConfig::TAB_HELP, notebook), "Help");
        LOG_OUT("Added all notebook pages");

        wxBoxSizer* sizer = new wxBoxSizer(wxVERTICAL);
        sizer->Add(notebook, 1, wxEXPAND | wxALL, 10);
        SetSizer(sizer);

        LOG_OUT("UI sizer set successfully");
    } 
    catch (const std::exception& e) {
        LOG_FATAL("Exception in InitUI: " << e.what());
    } 
    catch (...) {
        LOG_FATAL("Unknown exception in InitUI");
    }
}
