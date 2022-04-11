#!/usr/bin/bash

#install packages
sudo apt install vim 
sudo apt install gcc
sudo apt install g++ 
sudo apt install git 
sudo apt install curl 
sudo apt install libsfml-dev
sudo apt install gnome-tweaks grub-customizer
sudo apt install qbittorrent
sudo apt install python3

# Node
sudo apt install nodejs npm

# Latex
sudo apt install texlive-full texlive-latex-base texlive-extra-utils texlive-science texlive-bibtex-extra texlive-fonts-extra texlive-lang-portuguese

# g++-11
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt install -y g++-11

# ROS Noetic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install-ros-noetic-desktop-full

# catkin Setup
mkdir -p ~/catkin_ws/src

sudo apt update && sudo apt upgrade -y


