# Swerve Resources - Create Package

This folder contains files the make a generic skeleton ROS package using the command **create_package** from a terminal. This
command will setup the generic ROS package as shown below in the [layout](#layout) section. The alias for the **create_package**
is automatically created and sourced when the [Swerve ROS setup script](../setup.ws) is run as described in the 
[README](../README.md) in the main folder of this repo.

## Table of Contents
- [ROS Skeleton Package Layout](#layout)
- [Create Skeleton ROS Package](#create)

## Revisions List
Full Name | Email | Date | Revision | Description
--- | --- | --- | --- | ---
Frderick Wachter | wachterfreddy@gmail.com | 2017-09-18 | 0.0.0 | Initial document
Frderick Wachter | wachterfreddy@gmail.com | 2017-12-25 | 0.0.1 | Initial document

<a id="info">

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
create_package [package_name]
```
> Replace **[package_name]** with the desired ROS package name.

[Back to top](#top)


