# Swerve Resources - Installations

This folder contains a setup file that will automatically download required and useful software/applications
in order to run the Swerve ROS pacakage and for faster development. 

There are four install scripts that are located in this folder which are described in their relevant sections below.

**Note:** _Most of these installation scripts require that the [Swerve ROS setup script](.//setup.sh) has already been 
run in order for these scripts to work. To run the Swerve ROS setup script, please refer to the [README](README.md) 
located in the main folder of this repository._

## Table of Contents
- [Install Scripts](#install)
- [Applications Install](#applications)
- [Teensyduino Install](#teensyduino)
- [VESC Tools Install](#vesc)
- [ROS Packages Install](#ros_pack)
- [ROS Install](#ros)
- [Additional Information](#additional)

## Revisions List
Full Name | Email | Date | Revision | Description
--- | --- | --- | --- | ---
Frderick Wachter | wachterfreddy@gmail.com | 2017-09-18 | 0.0.0 | Initial document
Frderick Wachter | wachterfreddy@gmail.com | 2017-12-25 | 0.0.1 | Updated documentation

<a id="software"/>

## Install Scripts

There are four install scripts that are listed in the table below. Information on how to use these scripts are 
described below in their respective sections.

Script | Description
--- | ---
[applications_install.sh](applications_install.sh) | Installs various applications that the developers find useful or commonly use
[ros_install.sh](ros_install.sh) | Installs the desired ROS distrobution and realted ROS packages to work with Swerve
[ros_pkgs_install.sh](ros_pkgs_install.sh) | Installs required ROS packages to work with Swerve
[teensyduino_install.sh](teensyduino_install.sh) | Installs Arduino IDE and Teensyduino
[vesc_tools_install.sh](vesc_tools_install.sh) | Installs BLDC-Tool and VESC-Tool to work with VESC's

[Back to top](#top)

<a id="applications"/>

## Applications Install

The applications install script will install the softwares shown below. These applications are used by the Swerve 
developers.

Application | Description
--- | ---
[Google Chrome](https://www.google.com/chrome/browser/desktop/index.html) | Google Chrome
[Sublime Text Editor 2](https://www.sublimetext.com/2) | Text editor
[Terminator](https://gnometerminator.blogspot.com/p/introduction.html) | Terminal window that allows for window splitting
[Banshee](https://github.com/GNOME/banshee) | Video player
[Vokoscreen](https://github.com/vkohaupt/vokoscreen) | Video screen recorder

To install these applications, run the command shown below.

```bash
bash applications_install.sh
```

### Loading Applications

To run some of these applications easily from the terminal window, please refer to the _Command Line Tools_ section of the
[README](../README.md) found in the main folder of this repository.

### Issues/Questions

**Note:** _If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue) 
so that we can improve the installation file for future users._

[Back to top](#top)

<a id="teensyduino"/>

## Teensyduino Install

Teensyduino works off of the Arduino IDE in order to upload code to the Teensy microcontrollers. The Arduino 1.0.6 files
are located in a tar zipped file located in the [external folder](../external) located in this repo since there was not
an easy way to directly download this version from online through a setup script. Arduino 1.0.6 was used since it is 
compatible with Teensyduino.

Application | Description
--- | ---
[Arduino IDE 1.0.6](https://www.arduino.cc/en/Main/Software) | Arduino IDE
[Teensyduino](https://www.pjrc.com/teensy/td_download.html) | Teensyduino Add-On
[Teensy Loader](https://www.pjrc.com/teensy/index.html) | Teensy code loader applocation

To install these applications, run the command shown below.

```bash
bash teensyduino_install.sh
```

### Teensyduino Add-On Install

After all the applications have been installed, the Teensyduino window will pop up for adding it onto the Arduino IDE. Below
are some direction on how to properly install Teensyduino. These steps are laid out pictorially on the PJRC Teensy page found 
[here](https://www.pjrc.com/teensy/td_download.html).

- For the first two windows displayed labeled _Teensyduino_ and _Virtual Serial Driver_ click **next** 
- When the _Select Arduino Folder_ dialog box appears, use the Arduino folder called **arduino** that will have been made 
in the **Swerve** folder that this repository should be located in after running the [Swerve ROS setup script](../setup.ws). 
Navigate to this **arduino** folder then click **next**
- Click **next** on on the _Supported Arduino Versions_ dialog box
- Click **next** on the _Libraries to Install_ dialog box
- Finally, click **install** on the _Copy Files to Arduino Folder_ dialog box

After these files areinstalled, the installation is complete.

### Additional Information

Running this script will create a folder called **arduino** in the Swerve main directory folder created when running the 
[Swerve ROS setup script](../setup.ws). This folder will contain all the files for working with the Arduino IDE, Teensyduino, 
and the Teensy Loader applications.

### Loading Applications

To run some of these applications easily from the terminal window, please refer to the _Command Line Tools_ section of the
[README](../README.md) found in the main folder of this repository.

### Issues/Questions

**Note:** _If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue) 
so that we can improve the installation file for future users._

[Back to top](#top)

<a id="vesc"/>

## VESC Tools Install

The VESC Tools install script will install the softwares shown below that are used to work with the VESC's.

Application | Description
--- | ---
[BLDC-Tool](https://github.com/vedderb/bldc-tool) | Older tool for working with the VESC's
[VESC-Tool](http://vesc-project.com/vesc_tool) | Newer tools for workin with the VESC's

To install these applications, run the command shown below.

```bash
bash vesc_tools_insall.sh
```

### Additional Information

Running this script will create a folder called **vesc** in the Swerve main directory folder created when running the 
[Swerve ROS setup script](../setup.ws). This folder contains two folders called **bldc_tool** and **vesc_tool** which
contains all the files used to run these applications.

### Loading Applications

To run some of these applications easily from the terminal window, please refer to the _Command Line Tools_ section of the
[README](../README.md) found in the main folder of this repository.

### Issues/Questions

**Note:** _If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue) 
so that we can improve the installation file for future users._

[Back to top](#top)

<a id="ros_pack"/>

## ROS Packages Install

The ROS Packages install script installs all the required ROS packages needed to work with Swerve. These packages are
listed below.

**Note:** _This file is automatically run with the **ROS Install** script listed below is run_

Application | Description
--- | ---
[ROS Control](http://wiki.ros.org/ros_control) | Controllers for generic robots in ROS
[ROS Controllers](http://wiki.ros.org/ros_controllers) | Generic control framework in ROS
[ROS Gazebo Control](http://gazebosim.org/tutorials/?tut=ros_control) | Allows for ROS Control in Gazebo
[ROS SICK TiM](http://wiki.ros.org/sick_tim) | SICK TiM files for running simulated SICK LIDAR in Gazebo
[ROS OpenNI Camera](http://wiki.ros.org/openni_camera) | Allows for usage of depth camera's in Gazebo
[ROS OpenNI Launch](http://wiki.ros.org/openni_launch) | Allows for usage of depth camera's in Gazebo
ROS OpenNI Libraries | Libaries for depth camera in Gazebo

To install these ROS packages, run the command shown below.

```bash
bash ros_pkgs_install.sh [version]
```
> Replace [version] with the ROS version installed on the computer

### Issues/Questions

**Note:** _If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue) 
so that we can improve the installation file for future users._

[Back to top](#top)

<a id="ros"/>

## ROS Install

The ROS install script installs the full ROS desktop version desired by the user. This script will also 
automatically run the **ROS Packages Install** script mentioned above to download the neccessary ROS packages
to work with Swerve

Application | Description
--- | ---
[ROS](http://www.ros.org/) | Open-source robotics framework

To install ROS, run the command shown below.

```bash
bash ros_install.sh [version]
```
> Replace [version] with the ROS version to be installed on the computer

### Additional Information

Information on the versions of ROS that are avaialable can be fond [here](http://wiki.ros.org/Distributions). Please 
note that each version of Ubuntu is meant for only certain versions of ROS.

### Issues/Questions

**Note:** _If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue) 
so that we can improve the installation file for future users._

[Back to top](#top)

<a id="additional"/>

## Additional Information

### Terminator Additioanl Information

Terminator is the same as a terminal window but allows for the screen to be split horizontally and vertically 
as many times as desired. 

To split the screen vertically, open up Terminator and click the following keys: **CTRL + SHIFT + E**  
To split the screen horizontally, click the following keys: **CTRL + SHIFT + O**

### Markdown Viewer

An extension can be added to Google Chrome to allow for viewing of Markdown documents. This is a very useful
tool, and can be added after installing Google Chrome using the direction shown below.

- Go to [this link](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk?hl=en) 
in Google Chrome and add the extension
- Go to [chrome://extensions/](chrome://extensions/)
- Scroll to **Markdown Viewer** and click the box labeled _"Allow access to file URLs"_

[Back to top](#top)


