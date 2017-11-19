#!/bin/bash
## @file alias.sh
#  @brief Aliases for quicker development
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-11-15

alias swerve_ws='cd $SWERVE_DIR/swerve_ws'
alias swerve_build='cd $SWERVE_DIR/swerve_ws && catkin build'
alias source_swerve='source $SWERVE_DIR/swerve_ws/devel/setup.bash'
alias bldc='$SWERVE_DIR/bldc-tool/BLDC_Tool &'
alias create_package='bash $SWERVE_DIR/swerve_resources/create_package/create_package.sh'
alias swerve_resources='cd $SWERVE_DIR/swerve_resources/'

alias swerve='cd $SWERVE_DIR/swerve_ws/src/swerve'
alias sick='cd $SWERVE_DIR/swerve_ws/src/sick_tim'

alias swerve_gazebo='roslaunch swerve_gazebo swerve_gazebo.launch'
alias swerve_control='roslaunch swerve_control swerve_control.launch'
alias swerve_display='roslaunch swerve_description display.launch'
alias swerve_simple_demo='roslaunch swerve_navigation simple_demo.launch'
alias get_tf='rosrun tf view_frames'

alias video_player='banshee'
alias video_recorder='vokoscreen'


