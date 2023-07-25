#!/usr/bin/bash

# Update .bashrc
cp ./.bashrc ~/.bashrc
cp ./.bash_aliases ~/.bash_aliases

# Update Neovim
cp ./nvim ~/.config/nvim

# Update git config
cp -r git/.gitconfig ~/.gitconfig
cp -r git/.gitignore ~/.gitignore

