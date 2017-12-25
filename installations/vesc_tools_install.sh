#!/bin/bash
## @file vesc_tools_install.sh
#  @brief Installs BLDC and VESC tools for working with VESC's
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-12-21

echo "[SWERVE] Installing BLDC and VESC tools"

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Get BLDC tool
source ../alias.sh
mkdir $SWERVE_DIR/vesc
cd $SWERVE_DIR/vesc

git clone https://github.com/vedderb/bldc-tool.git bldc_tool # get BLDC tool

# BLDC tool dependent repository locations
sudo apt-get remove binutils-arm-none-eabi gcc-arm-none-eabi -y
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded -y

sudo apt-get update

# BLDC install dependent repositories
. /etc/lsb-release # get Ubuntu distribution name
sudo apt-get install gcc-arm-none-eabi=4.9.3.2015q3-1${DISTRIB_CODENAME}1 -y --force-yes
sudo apt-get install build-essential qt-sdk openocd git libudev-dev libqt5serialport5-dev -y
sudo apt-get remove modemmanager -y

cd $SWERVE_DIR/vesc/bldc_tool
qmake -qt=qt5
make clean && make

sudo adduser $USER dialout # Add user to dialout group

# Unpack VESC tool
mkdir $SWERVE_DIR/vesc/vesc_tool

cd $FILE_DIR/../external
unzip vesc_tool_free_linux.zip
mv vesc_tool_0.87 $SWERVE_DIR/vesc/vesc_tool/


