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
echo "export SWERVE_DIR=$SWERVE_DIR" >> ~/.bashrc # Swerve workspace
echo "source $SWERVE_DIR/swerve_resources/alias.sh" >> ~/.bashrc # Swerve aliases
echo "source $SWERVE_DIR/swerve_ws/devel/setup.bash" >> ~/.bashrc # Swerve workspace

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

#
# Install Applications
#

# Doxygen
sudo apt-get install doxygen -y


