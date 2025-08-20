#include <string>
#include <wx/wx.h>
#include <wx/notebook.h>
#include <wx/hyperlink.h>

#include "wxPanelForTab.h"
#include <project/config.h>
#include "uiconfig.h"
#include <user/user_data.h>

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

    if (tabName == UiConfig::TAB_SETTINGS)
    {
        sizer = InitSettingsContents();
    }
    else if (tabName == UiConfig::TAB_SEND)
    {
        sizer = InitSendContents();
    }
    else if (tabName == UiConfig::TAB_HELP)
    {
        sizer = InitHelpContents();
    }
    else
    {
        sizer = InitUnknownTabContents();
    }

    SetSizer(sizer);
}

// Init
wxBoxSizer* wxPanelForTab::InitSettingsContents()
{
    wxBoxSizer* mainSizer = new wxBoxSizer(wxVERTICAL);

    wxBoxSizer* row_foto_name = new wxBoxSizer(wxHORIZONTAL);
    wxBoxSizer* row2 = new wxBoxSizer(wxHORIZONTAL);
    wxBoxSizer* row3 = new wxBoxSizer(wxHORIZONTAL);

    wxImage img("data/not_foto.png", wxBITMAP_TYPE_PNG);
    img = img.Scale(100, 100, wxIMAGE_QUALITY_HIGH);
    wxStaticBitmap* foto = new wxStaticBitmap(this, wxID_ANY, wxBitmap(img));

    row_foto_name->Add(foto, 0, wxALL, 10);
    row_foto_name->Add(new wxStaticText(this, wxID_ANY, "user_name"), 0, wxALL, 10);

    mainSizer->Add(row_foto_name, 0, wxEXPAND);

    wxButton* button1 = new wxButton(this, wxID_ANY, "To def");
    row2->Add(button1, 0, wxALL, 10);

    button1->Bind(wxEVT_BUTTON, &wxPanelForTab::OnSettingsChangeButtonClicked, this);

    row2->Add(new wxStaticText(this, wxID_ANY, "Text 1"), 0, wxALL, 10);
    row2->Add(new wxStaticText(this, wxID_ANY, "Text 2"), 0, wxALL, 10);
    
    mainSizer->Add(row2, 0, wxEXPAND);

    row3->Add(new wxStaticText(this, wxID_ANY, "Text 1"), 0, wxALL, 10);
    row3->Add(new wxStaticText(this, wxID_ANY, "Text 2"), 0, wxALL, 10);

    mainSizer->Add(row3, 0, wxEXPAND);

    return mainSizer;
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
                   AppConfig::PROJECT_GITHUB_URL,
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

// Tabs func 
// - Settings 
void wxPanelForTab::OnSettingsChangeButtonClicked(wxCommandEvent& event)
{
    wxLogMessage("Settings button clicked!");
    ResetToDefault(true, true, true);
}

// - Send 

// - Help 
