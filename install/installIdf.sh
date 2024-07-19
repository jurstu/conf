sudo apt-get install git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0



mkdir -p ~/esp
cd ~/esp
git clone -b release/v4.4 --recursive https://github.com/espressif/esp-idf.git


cd ~/esp/esp-idf
./install.sh esp32,esp32s3

echo "alias get_idf='. $HOME/esp/esp-idf/export.sh'" >> ~/.zshrc

sudo usermod -a -G dialout $USER

