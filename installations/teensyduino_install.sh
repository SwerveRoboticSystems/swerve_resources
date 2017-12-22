#!/bin/bash
## @file teensyduino_install.sh
#  @brief Sets up Arduino IDE and teensyduino 
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-18

if [ -z "$1" ]; then
	echo "[ERROR] Need to input whether to install 32 or 64 bit version"
	echo "[ERROR] Example to install 64-bit version: bash teensyduino_install.sh 64"
	exit
fi

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Add Teensy to UDev Rules
cp 49-teensy.rules /etc/udev/rules.d

source ../alias.sh
cd $SWERVE_DIR/swerve_resources/external
mkdir $SWERVE_DIR/arduino_ide

# Get Arduino IDE 1.0.6
tar -xvzf arduino-1.0.6-linux$1.tgz
mv arduino-1.0.6/* $SWERVE_DIR/arduino/
rm -rf arduino-1.0.6

cd $SWERVE_DIR/arduino

# Get Teensy Loader and Teensyduino
wget "https://www.pjrc.com/teensy/teensy_linux$1.tar.gz"
tar -xvzf teensy_linux$1.tar.gz
rm -rf teensy_linux$1.tar.gz

wget "https://www.pjrc.com/teensy/td_140/TeensyduinoInstall.linux$1"
chmod u+x TeensyduinoInstall.linux$1
./TeensyduinoInstall.linux$1

# Removing Unneeded Files
rm -rf TeensyduinoInstall.linux$1 libpng12.so.0 libusb-0.1.so.4 


