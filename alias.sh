#!/bin/bash
## @file alias.sh
#  @brief Aliases for quicker development
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-11-15

alias swerve_dir='cd $SWERVE_DIR'
alias swerve_ws='cd $SWERVE_DIR/swerve_ws'
alias swerve_build='cd $SWERVE_DIR/swerve_ws && catkin build'
alias swerve_source='source $SWERVE_DIR/swerve_ws/devel/setup.bash'
alias bldc='$SWERVE_DIR/vesc/bldc_tool/BLDC_Tool &'
alias vesc='$SWERVE_DIR/vesc/vesc_tool/vesc_tool_0.87 &'
alias arduino='$SWERVE_DIR/arduino/arduino &'
alias teensy='$SWERVE_DIR/arduino/teensy &'
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

alias gitroot='cd $(git rev-parse --show-toplevel)' # go to top level of current git repo


