#!/bin/bash
set -e

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installing wxWidgets on macOS..."
    brew install wxwidgets
elif [[ -f /etc/debian_version ]]; then
    echo "Installing wxWidgets on Debian/Ubuntu..."
    sudo apt update
    sudo apt install -y libwxgtk3.2-dev
elif [[ -f /etc/redhat-release ]]; then
    echo "Installing wxWidgets on RHEL/Fedora..."
    sudo dnf install -y wxGTK3-devel
else
    echo "Unsupported OS. Install wxWidgets manually."
    exit 1
fi

echo "wxWidgets installation complete."
