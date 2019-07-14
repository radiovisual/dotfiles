#!/usr/bin/env bash

# Sync all the dotfiles we care about from 
# this repo to the $HOME dir

dotfilesdir="$(pwd)"

copy_dotfile () {
    cp "$1" "$2"
    printf "Copying \033[36m%s\033[0m to \e[90m%s\033[0m\n" "$1" "$2";
}

# dotfiles
copy_dotfile .gitconfig $HOME
copy_dotfile .gitignore_global $HOME
copy_dotfile .aliases $HOME
copy_dotfile .functions $HOME
copy_dotfile .exports $HOME
copy_dotfile .macos $HOME
copy_dotfile .zshrc $HOME

source ~/.zshrc

