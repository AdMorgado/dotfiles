#!/usr/bin/bash

# Flatpacks
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install gnome-software gnome-software-plugin-flatpak -y

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

# add repos
sudo apt install software-properties-common
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test

# install base
sudo apt install curl 

# For the computer
sudo apt install tlp
sudo apt install conky
sudo apt install gnome-tweaks 
sudo apt install grub-customizer

# For programming
sudo apt install vim 
sudo apt install gcc
sudo apt install git 
sudo apt install code 
sudo apt install valgrind
sudo apt install nodejs npm
sudo apt install python3 pip

# For daily use
sudo apt install ubuntu-restricted-extras
sudo apt install vlc 
sudo apt install mpv
sudo apt install yt-dlp
sudo apt install qbittorrent

# Discord
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo apt install ./discord.deb

# Libraries
sudo apt install libsfml-dev libgtest-dev

# Latex
sudo apt install texlive-full texlive-latex-base texlive-extra-utils texlive-science texlive-bibtex-extra texlive-fonts-extra texlive-lang-portuguese


# ROS Rolling Ridley - Temporary
sudo apt update && sudo apt install curl gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update
sudo apt install ros-rolling-desktop


### CLEAN AND UPDATE
sudo apt update && sudo apt upgrade -y
sudo apt autopurge
sudo apt autoremove
sudo apt autoclean
sudo flatpak update -y
sudo flatpak uninstall --unused -y


