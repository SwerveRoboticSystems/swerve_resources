#!/bin/bash
## @file setup.sh
#  @brief Sets up programs on a new Linux installation that is used for development and operation
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-18


RUN_DIR=$(pwd) # get directory of where the file was run from
FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # get directory of the file
cd $FILE_DIR

echo "Starting Linux setup script"

#
# Get Repository Locations
#

# Sublime Text Editor 2
sudo add-apt-repository ppa:webupd8team/sublime-text-2

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# ROS Indigo
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Catkin Build
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

# Terminator
sudo add-apt-repository ppa:gnome-terminator

sudo apt-get update

#
# Install Packages
#

# Google Chrome
sudo apt-get install --reinstall libnss3
sudo apt-get install google-chrome-stable -y

# ROS Indigo
sudo apt-get install ros-indigo-desktop-full -y
sudo apt-get install python-rosinstall -y

sudo rosdep init
rosdep update

echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Catkin Build
sudo apt-get install python-catkin-tools -y

# Sublime Text Editor 2
sudo apt-get install sublime-text -y
# bash setup_sublime.sh # TODO: setup Sublime to Google C++ Style Guidelines

# Doxygen
sudo apt-get install doxygen -y

# Terminator
sudo apt-get install terminator -y

# Vim
sudo apt-get install vim -y
cp .vimrc ~/

# Arduino IDE
sudo apt-get install arduino


clear
echo "Finished Linux setup script"

cd $RUN_DIR # go back to directory location of where the file was run from


