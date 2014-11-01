#!/bin/bash

#	Add repos
echo "Adding repos"
add-apt-repository ppa:bumblebee/stable -y

#tlp battery saver
add-apt-repository ppa:linrunner/tlp

echo "Updating system"
apt-get update
apt-get upgrade -y

echo "Installing general programmes"
#	General programmes
apt-get install -y doxygen 
apt-get install -y git
apt-get install -y gitk
apt-get install -y subversion
apt-get install -y vim
apt-get install -y vimdiff
apt-get install -y xbacklight
apt-get install -y cmake

#apt-get install -y qtcreator
apt-get install -y python-pyp
apt-get install -y guake htop
apt-get install -y kile texlive texlive-lang-polish
apt-get install -y shutter
apt-get install -y gimp
apt-get install -y bumblebee bumblebee-nvidia primus primus-libs-ia32 linux-headers-generic
./calibre_install.sh
./chrome_install.sh
apt-get install -y tlp tlp-rdw
tlp start

#
pip install numpy scipy

echo "Installing libraries"
#	Libraries
 apt-get install -y build-essential g++ libusb-1.0 libqt4-dev
 apt-get install -y libeigen3-dev libvtk5-qt4-dev libflann-dev
 apt-get install -y openjdk-7-jre openjdk-7-jdk
 apt-get install -y libboost-all-dev libboost-mpi-dev libboost-doc
 apt-get install -y libopenblas-base libopenblas-dev
 apt-get install -y libcr-dev mpich2 mpich2-doc
 ldconfig -v

#	Configure
./configure.sh

#	Random apps
apt-get install -y skype
apt-get install -y unetbootin

echo "Finished"
