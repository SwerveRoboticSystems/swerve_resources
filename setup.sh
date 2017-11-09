#!/bin/bash
## @file setup.sh
#  @brief Sets up installed programs along with aliases for working with the Swerve repository
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-27

#
# Create ROS Swerve Workspace and Aliases
#

mkdir ~/Swerve
cd ~/Swerve

# Create Swerve ROS workspace, get swerve meta-package, and build BLDC Tool 
mkdir swerve_ws swerve_ws/src

cd ~/Swerve/swerve_ws/src
git clone git@github.com:SwerveRoboticSystems/swerve.git
git clone git@github.com:SwerveRoboticSystems/sick_tim.git

echo "alias swerve_ws='cd ~/Swerve/swerve_ws'" >> ~/.bashrc
echo "alias source_swerve='source ~/Swerve/swerve_ws/devel/setup.bash'" >> ~/.bashrc
echo "alias swerve='cd ~/Swerve/swerve_ws/src/swerve'" >> ~/.bashrc
echo "alias sick='cd ~/Swerve/swerve_ws/src/sick_tim'" >> ~/.bashrc

cd ~/Swerve
git clone https://github.com/vedderb/bldc-tool.git bldc-tool
cd ~/Swerve/bldc-tool
qmake -qt=qt5
make
echo "alias bldc='~/Swerve/bldc-tool/BLDC_Tool &'" >> ~/.bashrc

mv ~/swerve_resources/ ~/Swerve/

# Get Swerve resources repository
bash swerve_resources/create_package/setup.sh

#
# Run Installation Script
#

bash swerve_resources/installations/setup.sh
sudo adduser $USER dialout

#
# Build ROS Workspace
#

cd swerve_ws
catkin build


