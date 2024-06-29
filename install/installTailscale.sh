#!/usr/bin/bash

read -p "Do you want to install Tailscale? (Y/n): " response
response=${response:-Y}
if [[ "$response" == "y" || "$response" == "Y" ]]; then
    curl -fsSL https://tailscale.com/install.sh | sh
    echo "Tailscale has been installed."
else
    echo "Installation of Tailscale aborted."
fi

