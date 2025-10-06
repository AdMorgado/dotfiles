#!/usr/bin/bash

base_path=$(dirname $0)

##################
# CONFIGURATIONS #
##################

cp -rf $base_path/.zshrc ~/
cp -rf $base_path/.zsh_aliases ~/

cp -rf $base_path/.gitconfig ~/
cp -rf $base_path/.gitmessage ~/
cp -rf $base_path/.global_gitignore ~/

cp -rf $base_path/.config/ ~/

touch ~/.zsh_local
