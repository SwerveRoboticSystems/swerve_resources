# Swerve Resources - Installations
<a id="top"/>

This folder contains a setup file that will automatically download required and useful software/applications
in order to run the Swerve ROS pacakage and for faster development. 

Below in the [Software List section](#software) a list of the softwares that will be installed by the 
[setup bash script](setup.sh) which can be run using the command shown in the [Install Software section](#install).

## Table of Contents
- [Software List](#software)
- [Installing Software](#install)

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

[Back to top](#top)

<a id="install"/>
## Installing Software

To install the software mentioned in the [Software List section](#software) above, run the command below
from the command line. If there are any issues with the installation, please notify 
[Frederick Wachter](mailto:wachterfreddy@gmail.com?Subject=Swerve%20Software%20Installation%20Issue&Body=Name%3A%20%0AIssue%3A%20) 
so that we can improve the installation file for future users.

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


