#!/usr/bin/bash

# add repos
sudo apt install software-properties-common
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt update

# Do God a favor and remove snaps
sudo snap remove firefox
sudo snap remove snap-store
sudo snap remove snapd-desktop-integration
sudo snap remove gtk-common-themes
sudo snap remove gnome-3-38-2004
sudo snap remove bare core20
sudo rm -rf /var/cache/snapd/
snap remove snapd
sudo apt purge snapd

# Flatpacks
sudo apt install -y flatpak 
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install -y gnome-software gnome-software-plugin-flatpak


# install packages
xargs -a install_packages.txt sudo apt install

# Discord
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo apt install ./discord.deb

# ROS Rolling Humble

sudo apt install software-properties-common
sudo add-apt-repository universe
sudo apt update && sudo apt install curl gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2-testing/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update -y && sudo apt upgrade -y 
sudo apt install ros-humble-desktop-full -y 

sudo apt install -y ros-humble-tf2
sudo apt install -y ros-humble-std-msgs
sudo apt install -y ros-humble-nav-msgs
sudo apt install -y ros-humble-action-msgs
sudo apt install -y ros-humble-sensor-msgs
sudo apt install -y ros-humble-geometry-msgs
sudo apt install -y ros-humble-ackermann-msgs
sudo apt install -y python3-colcon-common-extensions

### CLEAN AND UPDATE
sudo apt update && sudo apt upgrade -y
sudo apt autopurge
sudo apt autoremove
sudo apt autoclean
sudo flatpak update -y
sudo flatpak uninstall --unused -y


