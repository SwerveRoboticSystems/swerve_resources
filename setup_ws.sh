#!/bin/bash
## @file setup.sh
#  @brief Sets up installed programs along with aliases for working with the Swerve repository
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-27

#
# Create ROS Swerve Workspace and Aliases
#

echo "[SWERVE] Setting up Swerve workspace"

#
# Create Swerve folder
#

mkdir ~/Swerve
cd ~/Swerve

# Move Swerve resources repo to Swerve folder
FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mv FILE_DIR/ ~/Swerve/

# Auto source Swerve aliases
echo "source ~/Swerve/swerve_resources/alias.sh" >> ~/.bashrc

# Add user to dialout group
sudo adduser $USER dialout

#
# Create Swerve ROS workspace and build BLDC Tool 
#

mkdir swerve_ws swerve_ws/src

cd ~/Swerve/swerve_ws/src
git config --global pull.rebase true # force rebase when pulling
git clone git@github.com:SwerveRoboticSystems/swerve.git # get swerve repo
git clone git@github.com:SwerveRoboticSystems/sick_tim.git # get SICK TiM561 repo

cd ~/Swerve
git clone https://github.com/vedderb/bldc-tool.git bldc-tool # get BLDC tool
cd ~/Swerve/bldc-tool
qmake -qt=qt5
make

#
# Build ROS Workspace
#

cd ~/Swerve/swerve_ws
catkin build


