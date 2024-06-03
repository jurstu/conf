sudo apt update && sudo apt install -y cmake g++ wget unzip

version="4.10.0"

wget -nc -O ~/opencv.zip https://github.com/opencv/opencv/archive/$version.zip

#https://github.com/opencv/opencv_contrib/archive/refs/tags/4.10.0.zip

wget -nc -O ~/opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/refs/tags/$version.zip 



cd ~/
rm -rf opencv/
unzip opencv.zip
unzip opencv_contrib.zip
cd opencv-$version/
mkdir -p build && cd build


cmake -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-$version/modules ..

make -j7






