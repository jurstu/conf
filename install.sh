#!/usr/bin/bash
sudo apt update
sudo apt upgrade


line_to_add='export XDG_CONFIG_HOME="$HOME/.config"'
echo "$line_to_add" | sudo tee -a /etc/profile > /dev/null


sudo apt install -y git
#./configureGit.sh

sudo apt install -y libfuse2
sudo apt install -y dtrx
sudo apt install -y libgtk2.0-dev
sudo apt install -y fzf
sudo apt install -y screen
sudo apt install -y tmux
sudo apt install -y fontconfig
sudo apt install -y neofetch
sudo apt install -y lolcat
sudo apt install -y fortune
sudo apt install -y figlet
sudo apt install -y cowsay


sudo apt install -y vim
sudo apt install -y nano
sudo apt install -y neovim

sudo apt install -y htop
sudo apt install -y calc
sudo apt install -y powertop
sudo apt install -y v4l-utils
sudo apt install -y tree

sudo apt install -y wget
sudo apt install -y curl
sudo apt install -y nload
sudo apt install -y net-tools
sudo apt install -y nmap
sudo apt install -y socat

sudo apt install -y cmake build-essential pkg-config
sudo apt install -y python3-pip
sudo apt install -y protobuf-compiler
sudo apt install -y python3-protobuf


sudo apt install -y chromium
sudo apt install -y barrier
sudo apt install -y stow




#sudo snap install code


bash configureTextEditor.sh

read -p "Do you want to install signal? (Y/n): " response
response=${response:-Y}
if [[ "$response" == "y" || "$response" == "Y" ]]; then
    bash install/installSignal.sh
    echo "signal has been installed."
else
    echo "Installation of signal aborted."
fi


bash install/installCargo.sh
. $HOME/.cargo/env
cargo install bat
cargo install dutree
cargo install eza

#cargo install alacritty


bash install/installTailscale.sh



# TODO use stow
cd dotfiles
stow . 
cd ../

#install tmux plugins
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/scripts/install_plugins.sh











read -p "Do you want to install gst? (Y/n): " response
response=${response:-Y}
if [[ "$response" == "y" || "$response" == "Y" ]]; then
    sudo apt-get install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
    
    echo "gst has been installed."
else
    echo "Installation of gst aborted."
fi














read -p "Do you want to install zsh? (Y/n): " response
response=${response:-Y}
if [[ "$response" == "y" || "$response" == "Y" ]]; then
    #sudo apt install -y zsh
    cd install 
    ./installZsh.sh
    cd ../ 
    echo "zsh has been installed."
else
    echo "Installation of Tailscale aborted."
fi






