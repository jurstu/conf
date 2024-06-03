
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list


sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61


sudo apt update

sudo apt install -y balena-etcher-electron





#wget https://github.com/balena-io/etcher/releases/download/v1.7.9/balenaEtcher-1.7.9-ia32.AppImage 


#sudo dpkg -i balenaEtcher-1.7.9-ia32.AppImage
