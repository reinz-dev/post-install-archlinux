!#!/bin/bash

cd $HOME

if [[ "$?" != 0 ]]; then
  if [[ -d "dotfiles" ]]; then
    sudo pacman -Rns nautilus
    sudo pacman -S nautilus
    echo $(pwd)
    cd dotfiles
    echo $(pwd)
    cd .themes
    echo $(pwd)
    cd WhiteSur-gtk-theme
    ./install.sh -l
    ./install.sh -N glassy
    sudo ./tweak.sh -g
    sudo ./tweak.sh -F
    sudo ./tweak.sh -f alt
  fi
else
    sudo pacman -Rns nautilus
    sudo pacman -S nautilus
    echo $(pwd)
    cd dotfiles
    echo $(pwd)
    cd .themes
    echo $(pwd)
    cd WhiteSur-gtk-theme
    ./install.sh -l
    ./install.sh -N glassy
    sudo ./tweak.sh -g
    sudo ./tweak.sh -F
    sudo ./tweak.sh -f alt
fi

cd WhiteSur-icon-theme

./install.sh

