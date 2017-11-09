#!/bin/bash
## @file create_package.sh
#  @brief Creates a new swerve package with provided name
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-18

echo "Creating ROS package: $1"
package_name=$1
mkdir $package_name

cd $package_name
mkdir config inc launch resource scripts src

cp ~/Swerve/swerve_resources/create_package/package_files/doxygen_config.conf ./config/doxygen_config.conf
cp ~/Swerve/swerve_resources/create_package/package_files/CMakeLists.txt ./CMakeLists.txt
cp ~/Swerve/swerve_resources/create_package/package_files/package.xml ./package.xml
cp ~/Swerve/swerve_resources/create_package/package_files/index.html ./index.html
cp ~/Swerve/swerve_resources/create_package/package_files/README.md ./README.md

echo "Package created"


