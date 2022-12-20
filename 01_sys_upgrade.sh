#!/bin/bash

if [[ "$UID" != 0 ]]; then
    echo "USER NOT ROOT"
    sudo $0
    exit
else
    echo "USER IS ROOT"
fi

## update pacman
echo "update system"
sudo pacman -Syu && sudo pacman -Syyu
sudo pacman -S --needed base-devel

## install and update paru aur
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
sudo rm -rf $HOME/paru
paru -Syu && paru -Sua

