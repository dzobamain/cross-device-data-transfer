#include <string>
#include <wx/wx.h>
#include <wx/notebook.h>

#include "wxExtensions.h"

wxPanelForTab::wxPanelForTab(const std::string& tName,
                             wxWindow* parent,
                             wxWindowID id,
                             const wxPoint& pos,
                             const wxSize& size,
                             long style,
                             const wxString& name)
    : wxPanel(parent, id, pos, size, style, name),
      tabName(tName)
{
}

void wxPanelForTab::SetTabName(const std::string& name)
{
    tabName = name;
}

const std::string& wxPanelForTab::GetTabName() const
{
    return tabName;
}
