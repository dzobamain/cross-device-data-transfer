#include <string>
#include <wx/wx.h>
#include <wx/notebook.h>

#include "mainwindow.h"
#include "wxExtensions.h"
#include <project/config.h>

MainWindow::MainWindow() : wxFrame(nullptr, wxID_ANY, wxString(AppConfig::APP_NAME), wxDefaultPosition, wxSize(800, 600))
{
    InitUI();

    SetMinSize(wxSize(400, 290));
}

void MainWindow::InitUI()
{
    wxNotebook* notebook = new wxNotebook(this, wxID_ANY);

    notebook->AddPage(new wxPanelForTab("Settings", notebook), "Settings");
    notebook->AddPage(new wxPanelForTab("Send", notebook), "Send");
    notebook->AddPage(new wxPanelForTab("Help", notebook), "Help");

    wxBoxSizer* sizer = new wxBoxSizer(wxVERTICAL);
    sizer->Add(notebook, 1, wxEXPAND | wxALL, 10);
    SetSizer(sizer);
}
