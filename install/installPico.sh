

wget https://raw.githubusercontent.com/raspberrypi/pico-setup/master/pico_setup.sh 

mv pico_setup.sh ~/
cd ~/

chmod +x pico_setup.sh
./pico_setup.sh

rm pico_setup.sh


sudo apt install cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential

#echo 'export PICO_SDK_PATH=../../pico/pico-sdk/' >> ~/.zshrc
echo 'export PICO_SDK_PATH=~/pico/pico-sdk/' >> ~/.zshrc
#echo 'export PICO_SDK_PATH=../../pico/pico-sdk/' >> ~/.bashrc


