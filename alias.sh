#!/bin/bash
## @file alias.sh
#  @brief 
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-27

echo "[SWERVE] Adding Swerve aliases to bashrc file"

alias swerve_ws='cd ~/Swerve/swerve_ws'
alias source_swerve='source ~/Swerve/swerve_ws/devel/setup.bash'
alias bldc='~/Swerve/bldc-tool/BLDC_Tool &'
alias create_package='bash ~/Swerve/swerve_resources/create_package/create_package.sh'

alias swerve='cd ~/Swerve/swerve_ws/src/swerve'
alias sick='cd ~/Swerve/swerve_ws/src/sick_tim'

alias swerve_gazebo='roslaunch swerve_gazebo swerve_gazebo.launch'
alias swerve_control='roslaunch swerve_control swerve_control.launch'
alias swerve_display='roslaunch swerve_description display.launch'
alias swerve_simple_demo='roslaunch swerve_navigation simple_demo.launch'
alias get_tf='rosrun tf view_frames'


