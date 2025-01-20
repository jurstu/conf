sudo apt-get install python3-dev python3-numpy
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libpng-dev
sudo apt-get install libjpeg-dev
sudo apt-get install libopenexr-dev
sudo apt-get install libtiff-dev
sudo apt-get install libwebp-dev




version="4.10.0"

cmake -DOPENCV_EXTRA_MODULES_PATH=/home/jur/opencv_contrib-4.10.0/modules \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D BUILD_opencv_python3=ON \
-D PYTHON3_DEFAULT_EXECUTABLE=$(which python3) \
-D INSTALL_C_EXAMPLES=OFF \
-D PYTHON_EXECUTABLE=$(which python3) \
-D BUILD_opencv_python2=OFF \
-D PYTHON3_EXECUTABLE=/usr/bin/python3 \
-D PYTHON3_INCLUDE_DIR=/usr/include/python3.12 \
-D PYTHON3_PACKAGES_PATH=/usr/lib/python3/dist-packages \
-D OPENCV_PYTHON3_INSTALL_PATH=/usr/lib/python3/dist-packages \
-D CMAKE_BUILD_TYPE=RELEASE \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D OPENCV_CMAKE_CUDA_DEBUG=1 \
-D INSTALL_C_EXAMPLES=ON \
-D WITH_TBB=ON \
-D WITH_EIGEN=ON \
-D BUILD_opencv_cudacodec=OFF \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D WITH_CUBLAS=0 \
-D WITH_V4L=ON \
-D WITH_QT=OFF \
-D WITH_OPENGL=ON \
-D WITH_GSTREAMER=ON \
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D OPENCV_ENABLE_NONFREE=ON \
-D BUILD_EXAMPLES=ON .. \



# 
#-D WITH_CUDA=ON \
#-D WITH_CUDNN=ON \
