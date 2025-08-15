#include <string>
#include <wx/wx.h>
#include <wx/notebook.h>
#include <wx/hyperlink.h>

#include "wxExtensions.h"

wxPanelForTab::wxPanelForTab(const std::string &tName,
                             wxWindow *parent,
                             wxWindowID id,
                             const wxPoint &pos,
                             const wxSize &size,
                             long style,
                             const wxString &name) : wxPanel(parent, id, pos, size, style, name), tabName(tName)
{
    InitTabContents();
}

void wxPanelForTab::SetTabName(const std::string &name)
{
    tabName = name;
}

const std::string &wxPanelForTab::GetTabName() const
{
    return tabName;
}

void wxPanelForTab::InitTabContents()
{
    wxBoxSizer *sizer = new wxBoxSizer(wxVERTICAL);

    if (tabName == "Settings")
    {
        sizer = InitSettingsContents();
    }
    else if (tabName == "Send")
    {
        sizer = InitSendContents();
    }
    else if (tabName == "Help")
    {
        sizer = InitHelpContents();
    }
    else
    {
        sizer = InitUnknownTabContents();
    }

    SetSizer(sizer);
}

wxBoxSizer *wxPanelForTab::InitSettingsContents()
{
    wxBoxSizer *sizer = new wxBoxSizer(wxVERTICAL);

    sizer->Add(new wxStaticText(this, wxID_ANY, "Settings content here"), 0, wxALL, 10);

    return sizer;
}

wxBoxSizer *wxPanelForTab::InitSendContents()
{
    wxBoxSizer *sizer = new wxBoxSizer(wxVERTICAL);

    sizer->Add(new wxStaticText(this, wxID_ANY, "Send Content"), 0, wxALL, 10);

    return sizer;
}

wxBoxSizer *wxPanelForTab::InitHelpContents()
{
    wxBoxSizer *sizer = new wxBoxSizer(wxVERTICAL);

    sizer->Add(new wxStaticText(this, wxID_ANY, "Help Content"), 0, wxALL, 10);

    sizer->Add(new wxHyperlinkCtrl(
                   this,
                   wxID_ANY,
                   "View Source on GitHub",
                   "https://github.com/dzobamain/cross-device-data-transfer",
                   wxDefaultPosition,
                   wxDefaultSize,
                   wxHL_DEFAULT_STYLE),
               0, wxALL, 10);

    sizer->AddStretchSpacer();

    return sizer;
}

wxBoxSizer* wxPanelForTab::InitUnknownTabContents()
{
    wxBoxSizer* sizer = new wxBoxSizer(wxVERTICAL);

    wxStaticText* label = new wxStaticText(this, wxID_ANY, "Tab not found");

    sizer->AddStretchSpacer(1);
    sizer->Add(label, 0, wxALIGN_CENTER);
    sizer->AddStretchSpacer(1);

    return sizer;
}


