#!/usr/bin/bash

################
# INSTALLATION #
################

sudo pacman -Sy wl-clipboard

sudo pacman -Sy tmux 
sudo pacman -Sy neovim

sudo pacman -Sy zsh
chsh -s $(which zsh)

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -v

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions -v ;
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting -v
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions -v
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install -v

# Neovim telescope requirements
sudo pacman -Sy ripgrep
sudo pacman -Sy fd
