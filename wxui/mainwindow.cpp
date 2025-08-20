#include <string>
#include <wx/wx.h>
#include <wx/notebook.h>

#include "mainwindow.h"
#include "uiconfig.h"
#include "wxPanelForTab.h"
#include <project/config.h>

MainWindow::MainWindow() : wxFrame(nullptr, wxID_ANY, wxString(AppConfig::APP_NAME), wxDefaultPosition, wxSize(UiConfig::WINDOW_WIDTH, UiConfig::WINDOW_HEIGHT))
{   
    wxInitAllImageHandlers(); // Enable support for PNG, JPEG / JPG, BMP, GIF, TIFF, XPM
    
    InitUI();

    SetMinSize(wxSize(UiConfig::MIN_WINDOW_WIDTH, UiConfig::MIN_WINDOW_HEIGHT));
}

void MainWindow::InitUI()
{
    wxNotebook* notebook = new wxNotebook(this, wxID_ANY);

    notebook->AddPage(new wxPanelForTab(UiConfig::TAB_SETTINGS, notebook), "Settings");
    notebook->AddPage(new wxPanelForTab(UiConfig::TAB_SEND, notebook), "Send");
    notebook->AddPage(new wxPanelForTab(UiConfig::TAB_HELP, notebook), "Help");

    wxBoxSizer* sizer = new wxBoxSizer(wxVERTICAL);
    sizer->Add(notebook, 1, wxEXPAND | wxALL, 10);
    SetSizer(sizer);
}
