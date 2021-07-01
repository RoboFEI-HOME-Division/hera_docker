#!/bin/sh

sudo cp /opt/ros/melodic/lib/shared_libs/libSDL-1.2.so.0.11.4 /usr/lib/x86_64-linux-gnu/libSDL-1.2.so.0
sudo cp /opt/ros/melodic/lib/shared_libs/libSDL_image-1.2.so.0.8.4 /usr/lib/x86_64-linux-gnu/libSDL_image-1.2.so.0
sudo cp /opt/ros/melodic/lib/shared_libs/libpulse-simple.so.0.1.1 /usr/lib/x86_64-linux-gnu/libpulse-simple.so.0
sudo cp /opt/ros/melodic/lib/shared_libs/libpulse.so.0.20.2 /usr/lib/x86_64-linux-gnu/libpulse.so.0
sudo cp /opt/ros/melodic/lib/shared_libs/libsndfile.so.1.0.28 /usr/lib/x86_64-linux-gnu/libsndfile.so.1
sudo cp /opt/ros/melodic/lib/shared_libs/libasyncns.so.0.3.1 /usr/lib/x86_64-linux-gnu/libasyncns.so.0

sudo cp /opt/ros/melodic/lib/shared_libs/libwrap.so.0.7.6 /lib/x86_64-linux-gnu/libwrap.so.0

sudo mkdir /usr/lib/x86_64-linux-gnu/pulseaudio
sudo cp /opt/ros/melodic/lib/shared_libs/libpulsecommon-11.1.so /usr/lib/x86_64-linux-gnu/pulseaudio/libpulsecommon-11.1.so


sudo cp /opt/ros/melodic/lib/shared_libs/libpcl_common.so.1.8.1 /usr/lib/x86_64-linux-gnu/libpcl_common.so.1.8
sudo cp /opt/ros/melodic/lib/shared_libs/* /opt/ros/melodic/lib

sudo touch /etc/ld.so.conf.d/opencv.conf
sudo /bin/su -c "echo '/usr/local/lib' >> /etc/ld.so.conf.d/opencv.conf"
sudo ldconfig

sudo cp /usr/local/lib/libpcl_* /usr/lib/x86_64-linux-gnu/ -P
sudo cp /usr/local/lib/libOpenNI2.so* /usr/lib/x86_64-linux-gnu/ -P
sudo cp /usr/local/lib/libOpenNI.so.0 /usr/lib/x86_64-linux-gnu/ -P
sudo cp /usr/local/lib/libOpenNI2.so /usr/lib/ 
sudo cp /usr/local/lib/libOpenNI.so /usr/lib/ 
sudo cp /usr/lib/x86_64-linux-gnu/libfreetype.so.6.15.0 /usr/lib/x86_64-linux-gnu/libfreetype.so
sudo cp /usr/lib/x86_64-linux-gnu/libproj.so.12.0.0 /usr/lib/x86_64-linux-gnu/libproj.so
sudo cp /usr/lib/x86_64-linux-gnu/libhdf5_openmpi.so.100.0.1 /usr/lib/x86_64-linux-gnu/libhdf5_openmpi.so
sudo cp /usr/lib/x86_64-linux-gnu/libsz.so.2.0.1 /usr/lib/x86_64-linux-gnu/libsz.so
sudo cp /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so.4.2.0 /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
sudo cp /usr/lib/x86_64-linux-gnu/libnetcdf.so.13 /usr/lib/x86_64-linux-gnu/libnetcdf.so
sudo cp /usr/lib/x86_64-linux-gnu/libgl2ps.so.1.4.0 /usr/lib/x86_64-linux-gnu/libgl2ps.so
sudo cp /usr/lib/x86_64-linux-gnu/libtheoraenc.so.1.1.2 /usr/lib/x86_64-linux-gnu/libtheoraenc.so
sudo cp /usr/lib/x86_64-linux-gnu/libtheoradec.so.1.1.4 /usr/lib/x86_64-linux-gnu/libtheoradec.so
sudo cp /usr/lib/x86_64-linux-gnu/libogg.so.0.8.2 /usr/lib/x86_64-linux-gnu/libogg.so
sudo cp /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.4 /usr/lib/x86_64-linux-gnu/libxml2.so
sudo cp /usr/lib/x86_64-linux-gnu/libjsoncpp.so.1.7.4 /usr/lib/x86_64-linux-gnu/libjsoncpp.so
sudo cp /usr/local/lib/libvtkWrappingTools-6.3.a /usr/lib/
sudo cp /opt/ros/melodic/lib/shared_libs/libvtkGUISupportQt-6.3.so.6.3.0 /usr/lib/x86_64-linux-gnu/
sudo cp /opt/ros/melodic/lib/shared_libs/libvtkGUISupportQtOpenGL-6.3.so.6.3.0 /usr/lib/x86_64-linux-gnu/
sudo cp /opt/ros/melodic/lib/shared_libs/libvtkGUISupportQtSQL-6.3.so.6.3.0 /usr/lib/x86_64-linux-gnu/
sudo cp /opt/ros/melodic/lib/shared_libs/libvtkGUISupportQtWebkit-6.3.so.6.3.0 /usr/lib/x86_64-linux-gnu/
sudo cp /opt/ros/melodic/lib/shared_libs/libvtkViewsQt-6.3.so.6.3.0 /usr/lib/x86_64-linux-gnu/
sudo cp /opt/ros/melodic/lib/shared_libs/libvtkRenderingQt-6.3.so.6.3.0 /usr/lib/x86_64-linux-gnu/

#sudo cp -r /usr/include/eigen3/Eigen/ /opt/ros/melodic/include/
#sudo cp -r /usr/include/pcl-1.8/pcl/ /opt/ros/melodic/include/
