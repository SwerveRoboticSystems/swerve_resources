#!/bin/bash
## @file setup.sh
#  @brief Sets up programs on a new Linux installation that is used for development and operation
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-11-15

if [ -z "$1" ]; then
	echo "[ERROR] Need to input ROS version to download packages for"
	echo "[ERROR] Example to install ROS Indigo: bash ros_install.sh indigo"
	exit
fi

echo "[SWERVE] Installing ROS $1"

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#
# Get Repository Locations
#

# ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

#
# Install Packages
#

# Install ROS
sudo apt-get install ros-$1-desktop-full -y

sudo rosdep init
rosdep update

echo "source /opt/ros/$1/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Install Supporting ROS Packages
cd $FILE_DIR
bash ros_pkgs_install.sh $1 # install supporting ROS packages


