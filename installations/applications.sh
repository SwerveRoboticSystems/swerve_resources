#!/bin/bash
## @file setup.sh
#  @brief Sets up programs on a new Linux installation that is used for development and operation
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-18

echo "[SWERVE] Installing support applications"

#
# Get Repository Locations
#

# Sublime Text Editor 2
sudo add-apt-repository ppa:webupd8team/sublime-text-2

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Terminator
sudo add-apt-repository ppa:gnome-terminator

# BLDC
sudo apt-get remove binutils-arm-none-eabi gcc-arm-none-eabi
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded

sudo apt-get update

#
# Install Packages
#

# Google Chrome
sudo apt-get install --reinstall libnss3 -y
sudo apt-get install google-chrome-stable -y

# Sublime Text Editor 2
sudo apt-get install sublime-text -y
# bash setup_sublime.sh # TODO: setup Sublime to Google C++ Style Guidelines

# Doxygen
sudo apt-get install doxygen -y

# Terminator
sudo apt-get install terminator -y

# Arduino IDE
sudo apt-get install arduino -y

# Kazam
sudo apt-get install kazam -y

# BLDC
sudo apt-get install gcc-arm-none-eabi=4.9.3.2015q3-1trusty1 -y
sudo apt-get install build-essential qt-sdk openocd git libudev-dev libqt5serialport5-dev -y
sudo apt-get remove modemmanager -y

# Vim
sudo apt-get install vim -y

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # get directory of where this file is located
cp FILE_DIR/.vimrc ~/ # copy Swerve vim file to user home


