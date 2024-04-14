#!/usr/bin/bash

################
# INSTALLATION #
################

sudo apt install -y gcc g++
sudo apt install -y npm zip unzip
sudo apt install -y ripgrep

# Install neovim
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update
sudo apt install neovim -y

# Install zsh 
sudo apt install zsh -y

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -v

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions -v ;
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting -v
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions -v
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install -v

chsh -s $(which zsh)

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Set latest node and npm versions
nvm install node --reinstall-packages-from=node
nvm alias default node
nvm use default

