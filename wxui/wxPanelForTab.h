#ifndef WXPANELFORTAB_H
#define WXPANELFORTAB_H

#include <string>
#include <wx/wx.h>

class wxPanelForTab : public wxPanel
{
private:
    std::string tabName;

public:
    wxPanelForTab(const std::string& tName,
                  wxWindow* parent,
                  wxWindowID id = wxID_ANY,
                  const wxPoint& pos = wxDefaultPosition,
                  const wxSize& size = wxDefaultSize,
                  long style = wxTAB_TRAVERSAL,
                  const wxString& name = wxPanelNameStr);

    void SetTabName(const std::string& name);
    const std::string& GetTabName() const;

    void InitTabContents();

    wxBoxSizer* InitSettingsContents();
    wxBoxSizer* InitSendContents();
    wxBoxSizer* InitHelpContents();
    wxBoxSizer* InitUnknownTabContents();

    void OnSettingsChangeButtonClicked(wxCommandEvent& event);
};

#endif // WXPANELFORTAB_H
