#!/bin/bash
## @file setup.sh
#  @brief Sets up programs on a new Linux installation that is used for development and operation
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-11-15

echo "[SWERVE] Installing ROS"

#
# Get Repository Locations
#

# ROS Indigo
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Catkin Build
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

#
# Install Packages
#

# Install ROS
sudo apt-get install ros-$1-desktop-full -y
sudo apt-get install python-rosinstall -y
sudo apt-get install python-catkin-tools -y # catkin build
sudo apt-get install ros-$1-ros-control -y
sudo apt-get install ros-$1-ros-controllers -y
sudo apt-get install ros-$1-gazebo-ros-control -y

sudo rosdep init
rosdep update

echo "source /opt/ros/$1/setup.bash" >> ~/.bashrc
source ~/.bashrc


