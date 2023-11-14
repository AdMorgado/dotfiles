#!/usr/bin/bash

# Update .bashrc
cp ./.bashrc ~/
cp ./.bash_aliases ~/

# Config files 
cp -r ./.config ~/

# Update git config
cp -r git/.gitconfig ~/
cp -r git/.gitignore ~/

