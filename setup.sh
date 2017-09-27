#!/bin/bash
## @file setup.sh
#  @brief Sets up installed programs along with aliases for working with the Swerve repository
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-27

#
# Create ROS Swerve Workspace and Aliases
#

mkdir Swerve
cd ~/Swerve

# Crete Swerve ROS workspace and get swerve meta-package
mkdir swerve_ws swerve_ws/src

cd ~/swerve_ws/src
git clone https://github.com/SwerveRoboticSystems/swerve.git
echo "alias wsroot=\'cd ~/Swerve/swerve_ws\'" >> ~/.bashrc
cd ~/Swerve

mv ~/swerve_resources ~/Swerve/

# Get Swerve resources repository
bash swerve_resources/create_package/setup.sh

#
# Run Installation Script
#

bash swerve_resources/installations/setup.sh


