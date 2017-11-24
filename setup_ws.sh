#!/bin/bash
## @file setup.sh
#  @brief Sets up installed programs along with aliases for working with the Swerve repository
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-27

#
# Create ROS Swerve Workspace and Aliases
#

echo "[SWERVE] Setting up Swerve workspace"

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#
# Create Swerve folder
#

mkdir $FILE_DIR/../Swerve
cd $FILE_DIR/../Swerve
SWERVE_DIR=$(pwd)

# Move Swerve resources repo to Swerve folder
mv $FILE_DIR/ $SWERVE_DIR/

# Auto source
echo "source $SWERVE_DIR/swerve_resources/alias.sh" >> ~/.bashrc # Swerve aliases
echo "source $SWERVE_DIR/swerve_ws/devel/setup.bash" >> ~/.bashrc # Swerve workspace
echo "export SWERVE_DIR=$SWERVE_DIR" >> ~/.bashrc # Swerve workspace

#
# Create Swerve ROS workspace and build BLDC Tool 
#

cd $SWERVE_DIR
mkdir swerve_ws swerve_ws/src
cd $SWERVE_DIR/swerve_ws/src

# Setup Swerve workspace
git config --global pull.rebase true # force rebase when pulling
git clone https://github.com/SwerveRoboticSystems/swerve.git # get swerve repo
git clone https://github.com/SwerveRoboticSystems/sick_tim.git # get SICK TiM561 repo

# Setup and build BLDC tool
cd $SWERVE_DIR
git clone https://github.com/vedderb/bldc-tool.git bldc-tool # get BLDC tool

# BLDC tool dependent repository locations
sudo apt-get remove binutils-arm-none-eabi gcc-arm-none-eabi -y
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded -y

sudo apt-get update

# BLDC install dependent repositories
sudo apt-get install gcc-arm-none-eabi=4.9.3.2015q3-1trusty1 -y --force-yes
sudo apt-get install build-essential qt-sdk openocd git libudev-dev libqt5serialport5-dev -y
sudo apt-get remove modemmanager -y

cd $SWERVE_DIR/bldc-tool
qmake -qt=qt5
make clean && make

sudo adduser $USER dialout # Add user to dialout group

#
# Build ROS Workspace
#

# Get Catkin Build
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

sudo apt-get install python-rosinstall -y
sudo apt-get install python-catkin-tools -y

# Build Swerve ROS Workspace
cd $SWERVE_DIR/swerve_ws
catkin build


