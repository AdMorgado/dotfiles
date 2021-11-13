#!/bin/sh


# Elevate to sudo first
echo "Elevating to sudo"



#install packages
sudo apt install vim
sudo apt install g++ 
sudo apt install git


# zsh releated
## Automatically install zsh 
sudo apt-get install zsh
## Install oh-my-zsh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## Install powerlevel10k theme
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k





