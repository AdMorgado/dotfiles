#!/usr/bin/bash

#update .bashrc
cp ./.bashrc ~/.bashrc
cp ./.bash_aliases ~/.bash_aliases

#update .vimrc
cp ./.vimrc ~/.vimrc

#update git config
cp git/.gitconfig ~/.gitconfig
cp git/.gitignore ~/.gitignore

mkdir -p ~/dev_ws/src
cd ~/dev_ws/

colcon build

cd ~
