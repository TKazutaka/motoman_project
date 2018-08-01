PWD_DIR=$(pwd)
echo "***************************************"
echo "*****       for AR freenect       *****"
echo "***************************************"
echo "***** apt-get install software-properties-common python-software-properties *****"
apt-get install -y software-properties-common python-software-properties
echo "***** apt-get install build-essential cmake pkg-config *****"
apt-get install -y build-essential cmake pkg-config
echo "***** yes | yes | apt-add-repository ppa:floe/libusb && apt-get update -qq && apt-get install -y libusb-1.0-0-dev libusb-1.0-0-dev *****"
yes | apt-add-repository ppa:floe/libusb && apt-get update -qq && apt-get install -y libusb-1.0-0-dev libusb-1.0-0-dev
echo "***** apt-get install -y libturbojpeg libjpeg-turbo8-dev *****"
apt install -y libturbojpeg libjpeg-turbo8-dev
echo "***** dpkg -i debs/libglfw3*deb; apt-get install -f; apt-get install -y libgl1-mesa-dri-lts-vivid *****"
dpkg -i debs/libglfw3*deb; apt install -f; apt install -y libgl1-mesa-dri-lts-vivid
echo "***** yes | apt-add-repository ppa:pmjdebruijn/beignet-testing; apt-get update -qq; apt-get install -y beignet-dev; *****"
yes | apt-add-repository ppa:pmjdebruijn/beignet-testing; apt update -qq; apt install -y beignet-dev;
echo "***** pwd *****"
pwd
echo "***** ls -l *****"
ls -l
echo "***** cd src/libs/libfreenect2 *****"
cd ./src/libs/libfreenect2
echo "***** pwd *****"
pwd
echo "***** ls -l *****"
ls -l
echo "***** cmake . *****"
cmake . 
echo "***** make *****"
make
echo "***** make install *****"
make install

echo "***************************************"
echo "*****           for PCL           *****"
echo "***************************************"
echo "***** git clone https://github.com/PointCloudLibrary/pcl pcl-trunk *****"
git clone https://github.com/MoriKen254/pcl-1.8.0-Linux pcl-trunk
echo "***** ls *****"
ls
echo "***** cd pcl-trunk *****"
cd pcl-trunk
echo "***** ls *****"
ls
echo "***** dpkg -i PCL-1.8.0-Linux.deb *****"
dpkg -i --force-overwrite PCL-1.8.0-Linux.deb

echo "***************************************"
echo "*****       for AR Toolkit        *****"
echo "***************************************"
echo "***** apt install libv4l-dev *****"
apt install -y libv4l-dev
echo "***** cd /usr/include/linux *****"
cd /usr/include/linux
echo "***** ln -s ../libv4l1-videodev.h videodev.h *****"
ln -s ../libv4l1-videodev.h videodev.h
echo "***** ldconfig *****"
ldconfig
echo "***** ldconfig -p *****"
ldconfig -p
cd ${PWD_DIR}
