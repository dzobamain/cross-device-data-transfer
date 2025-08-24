#include <string>
#include <wx/wx.h>
#include <wx/hyperlink.h>

#include <util/log.h>
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
                             const wxString &name)
    : wxPanel(parent, id, pos, size, style, name), tabName(tName)
{
    LOG_OUT("Creating wxPanelForTab: " << tabName);

    try {
        InitTabContents();
        LOG_OUT("InitTabContents called successfully for tab: " << tabName);
    } catch (const std::exception& e) {
        LOG_FATAL("Exception in wxPanelForTab constructor: " << e.what());
    } catch (...) {
        LOG_FATAL("Unknown exception in wxPanelForTab constructor");
    }
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
    LOG_OUT("InitTabContents start for tab: " << tabName);
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
    LOG_OUT("InitTabContents finished for tab: " << tabName);
}

// Init
wxBoxSizer *wxPanelForTab::InitSettingsContents()
{
    wxBoxSizer *mainSizer = new wxBoxSizer(wxVERTICAL);

    // row 1
    wxBoxSizer *row_data = new wxBoxSizer(wxHORIZONTAL);

    wxImage img("data/not_foto.jpg", wxBITMAP_TYPE_ANY);
    if (img.IsOk())
    {
        img = img.Scale(128, 128, wxIMAGE_QUALITY_HIGH);
        wxStaticBitmap *foto = new wxStaticBitmap(this, wxID_ANY, wxBitmap(img));
        row_data->Add(foto, 0, wxALL, 10);
    }
    else
    {
        row_data->Add(new wxStaticText(this, wxID_ANY, "Image load failed"), 0, wxALL, 10);
    }

    wxStaticText *userName = new wxStaticText(this, wxID_ANY, "user_name");
    wxStaticText *userId = new wxStaticText(this, wxID_ANY, "0000000000");

    wxFont fontBase(16, wxFONTFAMILY_DEFAULT, wxFONTSTYLE_NORMAL, wxFONTWEIGHT_NORMAL);

    userName->SetFont(fontBase);
    userId->SetFont(fontBase);

    wxBoxSizer *rightSizer = new wxBoxSizer(wxVERTICAL);
    rightSizer->Add(userName, 0, wxBOTTOM, 10);
    rightSizer->Add(userId, 0, wxTOP, 10);

    row_data->Add(rightSizer, 0, wxALIGN_CENTER_VERTICAL | wxALL, 10);

    mainSizer->Add(row_data, 0, wxALIGN_CENTER);

    // row 2
    wxBoxSizer *row2 = new wxBoxSizer(wxHORIZONTAL);

    row2->Add(new wxStaticText(this, wxID_ANY, "Text 1"), 0, wxALL, 10);
    row2->Add(new wxStaticText(this, wxID_ANY, "Text 2"), 0, wxALL, 10);

    mainSizer->Add(row2, 0, wxEXPAND);

    // row 3
    wxBoxSizer *row3 = new wxBoxSizer(wxHORIZONTAL);
    row3->Add(new wxStaticText(this, wxID_ANY, "Text 1"), 0, wxALL, 10);
    row3->Add(new wxStaticText(this, wxID_ANY, "Text 2"), 0, wxALL, 10);

    mainSizer->Add(row3, 0, wxEXPAND);

    ResetToDefault(true, true, true);

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

wxBoxSizer *wxPanelForTab::InitUnknownTabContents()
{
    wxBoxSizer *sizer = new wxBoxSizer(wxVERTICAL);

    wxStaticText *label = new wxStaticText(this, wxID_ANY, "Tab not found");

    sizer->AddStretchSpacer(1);
    sizer->Add(label, 0, wxALIGN_CENTER);
    sizer->AddStretchSpacer(1);

    return sizer;
}

// Tabs func
// - Settings
void wxPanelForTab::OnSettingsChangeButtonClicked(wxCommandEvent &event)
{
    wxLogMessage("Settings button clicked!");
}

// - Send

// - Help
