# Swerve Resources - Installations

This folder contains a setup file that will automatically download required and useful software/applications
in order to run the Swerve ROS pacakage and for faster development. 

Below in the [Software List section](#software) a list of the softwares that will be installed by the 
[setup bash script](setup.sh) which can be run using the command shown in the [Install Software section](#install).

## Table of Contents
- [Software List](#software)
- [Installing Software](#install)
- [Other Information](#other)

## Revisions List
Full Name | Email | Date | Revision | Description
--- | --- | --- | --- | ---
Frderick Wachter | wachterfreddy@gmail.com | 2017-09-18 | 0.0.0 | Initial document

<a id="software"/>

## Software List

Below is listed the software that should be installed on the Linux machine in order to work properly with 
the Swerve ROS package and allow for faster development. These softwares/application can be automatically
downloaded and setup using the setup bash file that is included in this folder. To run this file, refer to
the [installation section](#install) below.

- [ROS Indigo](http://wiki.ros.org/indigo) (requires Linux 14.04)
- [Catkin Build](http://catkin-tools.readthedocs.io/en/latest/installing.html)
- [Sublime Text Editor 2](http://www.sublimetext.com/)
- [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html)
- [Markdown Viewer Extension](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk?hl=en)
- [Doxygen](http://www.stack.nl/~dimitri/doxygen/)
- [Terminator](https://gnometerminator.blogspot.ca/)

[Back to top](#top)

<a id="install"/>

## Installing Software

### Before Installing
In order for the installation to work properly, the **swerve_resources** repo must be placed in the directory listed below.

```bash
~/Swerve/swerve_resources
```

If this repo is not, please create a **Swerve** directory in the user home directory (cd ~/) and place the **swerve_resources** folder inside of there. This is required for the setup and aliases to be setup properly.

### Aliases
Below is the list of aliases that will be added to the local **bashrc** file of the user when the installation script is run. 

Command | Description
--- | ---
create_package [package_name] | Creates a skeleton ROS package with the provided package name in the current directory of where the command was run
wsroot | Brings you to the root of the Swerve ROS workspace (~/Swerve/swerve_ws)
> Replace [package_name] with the desired name for the ROS package

### Installing
To install the software mentioned in the [Software List section](#software) above, run the command below
from the command line. 

**Note:** _If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue&Body=Name%3A%20%0AIssue%3A%20) 
so that we can improve the installation file for future users._

```bash
cd ~/Swerve/swerve_resources/installations
bash setup.sh
```

An extension can be added to Google Chrome to allow for viewing of Markdown documents. This is a very useful
tool, and can be added after installing Google Chrome using the direction shown below.

- Go to [this link](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk?hl=en) in Google 
Chrome and add the extension
- Go to [chrome://extensions/](chrome://extensions/)
- Scroll to **Markdown Viewer** and clock the box labeled _"Allow access to file URLs"_

[Back to top](#top)

<a id="other"/>

## Other Information

Below is extra information regarding any of the software's in the [Software List section](#software).

### Terminator
This is the same as a terminal window but allows for the screen to be split horizontally and vertically as many times as desired. 

To split the screen vertically, open up Terminator and click the following keys: **CTRL + SHIFT + E**  
To split the screen horizontally, click the following keys: **CTRL + SHIFT + O**

[Back to top](#top)


