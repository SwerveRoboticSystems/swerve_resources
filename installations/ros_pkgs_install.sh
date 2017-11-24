#!/bin/bash
## @file ros_pkgs_install.sh
#  @brief Installs
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-11-15

echo "[SWERVE] Installing ROS Supporting Packages for Swerve"

sudo apt-get install ros-$1-ros-control -y # ros control
sudo apt-get install ros-$1-ros-controllers -y # ros controllers
sudo apt-get install ros-$1-gazebo-ros-control -y # gazebo ros control
sudo apt-get install ros-$1-sick-tim # sick tim
sudo apt-get install ros-$1-openni-camera # gazebo depth camera
sudo apt-get install ros-$1-openni-launch # gazebo depth camera
sudo apt-get install libopenni0 libopenni-dev # depth camera supporting packages


