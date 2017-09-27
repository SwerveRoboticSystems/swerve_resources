# Swerve Resources - Create Package

This folder contains files the make a generic skeleton ROS package using a command line alias that is applied 
to the **~/.bashrc** file when the [setup script](./setup.sh) is run. In order for this to work properly, the location of 
this folder must be the same as it is described below in order for the comment to function.

## Table of Contents
- [Folder Location](#location)
- [Adding Alias for Command Line](#alias)
- [ROS Skeleton Package Layout](#layout)
- [Create Skeleton ROS Package](#create)

## Revisions List
Full Name | Email | Date | Revision | Description
--- | --- | --- | --- | ---
Frderick Wachter | wachterfreddy@gmail.com | 2017-09-18 | 0.0.0 | Initial document

<a id="location"/>

## Folder Location

The **swerve_resources** folder is expected to be located at the directory shown below. The alias that is
automatically added to the computers **~/.bashrc** file by the [setup script](./setup.sh) references the 
files within the **swerve_resources/create_package** folder in order to auto-generate a skeleton ROS package.

```bash
~/Swerve/swerve_resources
```

[Back to top](#top)

<a id="alias"/>

## Adding Alias for Command Line

In order to automatically place the alias for autogenerating a skeleton ROS package, use the command below.

**Note:** _This is already done automatically by the [Linux setup script](../installations/setup.sh) and does not need to
be redone_

```bash
cd ~/Swerve/swerve_resources/create_package
bash setup.sh
```

[Back to top](#top)

<a id="layout">

## ROS Skeleton Package Layout

The skeleton ROS package that is generated using the command shown [below](#create) will create a package with the file structure shown below using the general ROS package files included in the **package_files** folder.

- **[package_name]**
	- **config**
		- doxygen_config.conf
	- **inc**
	- **launch**
	- **resource**
	- **scripts**
	- **src**
	- CMakeLists.txt
	- package.xml
	- README.md
	- index.html

> Bolded items represent folders

[Back to top](#top)

<a id="create"/>

## Create Skeleton ROS Package

To create a skeleton ROS package, use the command below. This will create the ROS package with the provided 
name in the same folder from where the command was run. 

```bash
create_package <package_name>
```
> Replace **&lt;package_name&gt;** with the desired ROS package name.

[Back to top](#top)


