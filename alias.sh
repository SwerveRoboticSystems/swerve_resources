#!/bin/bash
## @file alias.sh
#  @brief 
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-27

echo "[SWERVE] Adding Swerve aliases to bashrc file"

echo "alias swerve_ws='cd ~/Swerve/swerve_ws'" >> ~/.bashrc
echo "alias source_swerve='source ~/Swerve/swerve_ws/devel/setup.bash'" >> ~/.bashrc
echo "alias bldc='~/Swerve/bldc-tool/BLDC_Tool &'" >> ~/.bashrc
echo "alias create_package='bash ~/Swerve/swerve_resources/create_package/create_package.sh'" >> ~/.bashrc

echo "alias swerve='cd ~/Swerve/swerve_ws/src/swerve'" >> ~/.bashrc
echo "alias sick='cd ~/Swerve/swerve_ws/src/sick_tim'" >> ~/.bashrc

echo "alias swerve_gazebo='roslaunch swerve_gazebo swerve_gazebo.launch'" >> ~/.bashrc
echo "alias swerve_control='roslaunch swerve_control swerve_control.launch'" >> ~/.bashrc
echo "alias swerve_display='roslaunch swerve_description display.launch'" >> ~/.bashrc
echo "alias swerve_simple_demo='roslaunch swerve_navigation simple_demo.launch'" >> ~/.bashrc
echo "alias get_tf='rosrun tf view_frames'" >> ~/.bashrc


