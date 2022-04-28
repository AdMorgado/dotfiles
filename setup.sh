#!/usr/bin/bash

# add repos
sudo apt install software-properties-common
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test

#install packages
sudo apt install vim 
sudo apt install gcc
sudo apt install git 
sudo apt install curl 
sudo apt install gnome-tweaks grub-customizer
sudo apt install qbittorrent
sudo apt install python3

# Libraries
sudo apt install libsfml-dev libgtest-dev

# Node
sudo apt install nodejs npm

# Latex
sudo apt install texlive-full texlive-latex-base texlive-extra-utils texlive-science texlive-bibtex-extra texlive-fonts-extra texlive-lang-portuguese


# g++-11
sudo apt install -y g++-11

sudo apt update && sudo apt upgrade -y

# ROS Rolling Ridley - Temporary
sudo apt update && sudo apt install curl gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update
sudo apt install ros-rolling-desktop
