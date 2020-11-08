#!/usr/bin/env bash

# Sync all the dotfiles we care about from 
# this repo to the $HOME dir

curr=$PWD

cd ~/gitprojects/dotfiles

copy_dotfile () {
    printf "Copying \033[36m%s\033[0m to \e[90m%s\033[0m\n" "$1" "$2";
    cp -f "$1" "$2"
}

# dotfiles
copy_dotfile .gitconfig $HOME
copy_dotfile .gitignore_global $HOME
copy_dotfile .aliases $HOME
copy_dotfile .functions $HOME
copy_dotfile .exports $HOME
copy_dotfile .macos $HOME
copy_dotfile .zshrc $HOME
copy_dotfile config/.ssh/config $HOME/.ssh/config
copy_dotfile config/starship.toml $HOME/.config/starship.toml

# This file is not kept under version control, but if 
# it is present, it is a place you can put sensitive data
copy_dotfile .secrets $HOME

echo -e "\n\nNow that you are synced, you can get the changes by running:"
printf "\033[36m%s\033[0m\n" "source ~/.zshrc";

cd ${curr}

