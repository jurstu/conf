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



#cmake -DBUILD_TIFF=ON -D CMAKE_BUILD_TYPE=RELEASE -D INSTALL_C_EXAMPLES=OFF -D PYTHON_EXECUTABLE=$(which python3) -D BUILD_opencv_python2=OFF -D BUILD_opencv_python3=OFF -D CMAKE_INSTALL_PREFIX=/usr -D WITH_GSTREAMER=ON -D BUILD_EXAMPLES=ON ..





# FOR PYTHON
# sudo apt-get install python3-dev python3-numpy
# sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
# sudo apt-get install libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev
# sudo apt-get install libgtk-3-dev
# sudo apt-get install libpng-dev
# sudo apt-get install libjpeg-dev
# sudo apt-get install libopenexr-dev
# sudo apt-get install libtiff-dev
# sudo apt-get install libwebp-dev
# -D INSTALL_PYTHON_EXAMPLES=ON \
# -D INSTALL_C_EXAMPLES=OFF \
# -D PYTHON_EXECUTABLE=$(which python3) \
# -D BUILD_opencv_python2=OFF \
# -D CMAKE_INSTALL_PREFIX=$(python3 -c “import sys; print(sys.prefix)”) \
# -D PYTHON3_EXECUTABLE=$(which python3) \
# -D PYTHON3_INCLUDE_DIR=$(python3 -c “from distutils.sysconfig import get_python_inc; print(get_python_inc())”) \
# -D PYTHON3_PACKAGES_PATH=$(python3 -c “from distutils.sysconfig import get_python_lib; print(get_python_lib())”) \



# FOR GSTREAMER
# sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
#-D WITH_GSTREAMER=ON
#-D OPENCV_GENERATE_PKGCONFIG=ON 


cmake -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-$version/modules ..

make -j7



cat modules/core/version_string.inc




