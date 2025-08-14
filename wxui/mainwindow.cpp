#include <string>
#include <wx/wx.h>
#include <wx/notebook.h>

#include "mainwindow.h"
#include "wxExtensions.h"

MainWindow::MainWindow() : wxFrame(nullptr, wxID_ANY, "Cross Device Data Transfer", wxDefaultPosition, wxSize(800, 600))
{
    wxNotebook* notebook = new wxNotebook(this, wxID_ANY);

    wxPanelForTab* tabSettings = new wxPanelForTab("Settings", notebook, wxID_ANY);
    wxPanelForTab* tabSend = new wxPanelForTab("Send", notebook, wxID_ANY);
    wxPanelForTab* tabHelp = new wxPanelForTab("Help", notebook, wxID_ANY);

    notebook->AddPage(tabSettings, wxString(tabSettings->GetTabName()));
    notebook->AddPage(tabSend, wxString(tabSend->GetTabName()));
    notebook->AddPage(tabHelp, wxString(tabHelp->GetTabName()));

    wxBoxSizer* sizer = new wxBoxSizer(wxVERTICAL);
    sizer->Add(notebook, 1, wxEXPAND);
    SetSizer(sizer);
}
