#!/bin/bash
## @file setup.sh
#  @brief Sets up programs on a new Linux installation that is used for development and operation
#  @author Frederick Wachter - wachterfreddy@gmail.com
#  @date Created: 2017-09-18

echo "[SWERVE] Installing support applications"

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # get directory of where this file is located

#
# Get Repository Locations
#

# Sublime Text Editor 2
sudo add-apt-repository ppa:webupd8team/sublime-text-2

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Terminator
sudo add-apt-repository ppa:gnome-terminator

# Banshee
sudo add-apt-repository ppa:banshee-team/ppa

# Vokoscreen
sudo add-apt-repository ppa:vokoscreen-dev/vokoscreen

sudo apt-get update

#
# Install Packages
#

# Google Chrome
sudo apt-get install --reinstall libnss3 -y
sudo apt-get install google-chrome-stable -y

# Sublime Text Editor 2
sudo apt-get install sublime-text -y
# bash setup_sublime.sh # TODO: setup Sublime to Google C++ Style Guidelines

# Terminator
sudo apt-get install terminator -y

# Banshee
sudo apt-get install banshee -y

# Vokoscreen
sudo apt-get install vokoscreen -y

# Vim
sudo apt-get install vim -y
cp $FILE_DIR/.vimrc ~/ # copy Swerve vim file to user home


