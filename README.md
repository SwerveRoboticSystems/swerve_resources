# Swerve Resources

The folders in this repo include setup scripts for installing all required/recommended softwares 
to work with the Swerve platform for new Linux installations, quick access and useful command 
line tools, and reference documents showing the way to properly document C++ and Python files 
for auto-documentation generation using Doxygen.

## Table of Contents
- [Before Setup](#before)
- [Setup Workspace](#setup)
- [Command Line Tools](#commandline)
- [Questions/Issues?](#questios)
- [Additional Information](#additional)

## Revisions List
Full Name | Email | Date | Revision | Description
--- | --- | --- | --- | ---
Frederick Wachter | [wachterfreddy@gmail.com](mailto:wachterfreddy@gmail.com) | 2017-09-27 | 0.0.0 | Initial document
Frederick Wachter | [wachterfreddy@gmail.com](mailto:wachterfreddy@gmail.com) | 2017-12-21 | 0.0.1 | Updated documentation

<a id="befre"/>

## Before Setup

Before setting up the Swerve ROS workspace, ROS needs to be installed on your system. To install 
ROS and related packages that are required to run Swerve, installation scripts have been made and 
are located in the [installations](./installations) folder. More informatio regarding the install can
be found on the README located within the [installations](./installations) folder, but is the
installation process is also described below.

To install ROS, open up terminal and run the command below to clone this repo.

```bash
git clone https://github.com/SwerveRoboticSystems/swerve_resources.git
```

Then go to the [installations](installations) folder and run the commands below to install ROS. 
This will also install the relevant ROS packages that are needed to work with the 
[Swerve ROS repository](https://github.com/SwerveRoboticSystems/swerve). Enter the version of the 
desired ROS distrubtion based on the version of Linux Ubuntu that you are running (assuming you 
are running Ubuntu). For more information on this, refer to the 
[ROS distrobutions wiki page](http://wiki.ros.org/Distributions).

```bash
cd installations # if you did not do this yet, assuming in swerve_resources folder
bash ros_install.sh [version]
```
> Replace **[version]** with the correct ROS version

[Back to top](#top)

<a id="setup"/>

## Setup Workspace

To download and setup the Swerve ROS workspace, run the commands shown below. This will download 
all the packages that are used by Swerve and then build the ROS workspace using _catkin build_. These
commands will create the workspace folder within the directory the command is run in. Please refer 
below for more information on this. 

```bash
git clone https://github.com/SwerveRoboticSystems/swerve_resources.git # if you did not do this yet
cd swerve_resources # wherever this folder is if it was already cloned
bash setup.sh
```

Running the commands above will create the following folder directory shown below in the directory
that the commands were run in. The **swerve_ws** folder is the 
[Swerve ROS repository](https://github.com/SwerveRoboticSystems/swerve) that is automatically downloaded
and build when running the setup script above.

- Swerve
	- swerve_resources
	- swerve_ws

### Additional Installed Software

Running the commands above will also install the softwares shown below in the table.

Software | Description
--- | ---
[Doxygen](http://www.stack.nl/~dimitri/doxygen/) | Tool for auto-building documentation

**Note:** _If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue) 
so that we can improve the installation file for future users._

[Back to top](#top)

<a id="setup"/>

## Command Line Tools

Below is a table of quick commands that are sourced by the terminal every time a new one is opened.
These commands allow for faster development time by running various roslaunch files, changing directories
quicker using a single command, and executing programs used by Swerve. These commands are not neccessary,
but are very useful and easy to use on the command line. To use any of the commands, type them into a
terminal window and they will perform the operations described in the table below.

These quick commands are aliases that are auto-sourced when the Swerve ROS workspace is setup using
the [setup script](./setup.sh) and the [aliases file](./alias.sh) is located within this repo.

**Note:** _Some of these commands require for additional software to be downloaded. To download all the
software required to run all the comamnds, please download all the additional applications as described
in the [installations](installations) folder README._

### Change Directory Commands

Command | Operation
--- | ---
swerve_dir | Change directory to the Swerve folder
swerve_ws | Change directory to the root of the Swerve ROS workspace
swerve_resources | Change directory to the Swerve Resources repository
swerve | Change directory to the Swerve ROS repository
sick | Change directory to the SICK TiM561 ROS repository

### Run Applications

Command | Operation
--- | ---
bldc | Launches the BLDC-tool for working with the VESC's
vesc | Launches the VESC-tool for working with the VESC's
arduino | Launches Arduino IDE and Teensyduino
teensy | Launches Teensy Loader application
video_player | Launches banshee video player
video_recorder | Launches Vokoscreen screen recorder application

### ROS Commands

Command | Operation
--- | ---
swerve_build | Catkin builds the ROS workspace
swerve_source | Sources the Swerve ROS workspace
create_package | Creates an empty ROS package*
get_tf | Get the current TF tree if Swerve has been loaded to the ROS paramter server
> \* Refer to the [Create Paackage README](https://github.com/SwerveRoboticSystems/swerve_resources/tree/master/create_package)

### ROS Launch Commands

Command | Operation
--- | ---
swerve_gazebo | Brings up Swerve in Gazebo
swerve_control | Loads the Swerve controllers
swerve_display | Loads swerve into the ROS parameter server and shows Swerve through RViz
swerve_simple_demo | Brings the full Swerve platform into Gazebo and moves Swerve
> Additional ROS launch commands including optional parameters are described in the
> [Additional Information](#additional) section below

[Back to top](#top)

<a id="questions"/>

## Questions?

If you have any questions, please feel free to contact Frederick Wachter. His icontact information
is below. Please also email Frederick if there was any issues with the installation scripts and information
from this README in order to continually improve the install process.

Name | Email
--- | ---
Frederick Wachter | [wachterfreddy@gmail.com](mailto:wachterfreddy@gmail.com?subject=Swerve%20Resources%20Repo)

[Back to top](#top)

<a id="additional"/>

## Additional Information

More information regarding the conects of this repositroy can be found in the README's in each of 
the folders included in this repo.

### ROS Launch Additional Commands

**TODO**

[Back to top](#top)


