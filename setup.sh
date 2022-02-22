#!/usr/bin/bash

#install packages
sudo apt install vim g++ git curl libsfml-dev
sudo apt install gnome-tweaks
#latex
sudo apt install texlive-latex-base texlive-extra-utils texlive-science texlive-bibtex-extra texlive-fonts-extra texlive-lang-portuguese

#install ROS for ubuntu 20.04
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install-ros-noetic-desktop-full


# catkin Setup
mkdir -p ~/catkin_ws/src




