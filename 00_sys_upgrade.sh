#!/bin/bash

if [[ "$UID" != 0 ]]; then
    echo "USER NOT ROOT"
    sudo $0
    exit
else
    echo "USER IS ROOT"
fi

cd ../

## update pacman
echo "update system"
pacman -Syu && pacman -Syyu
pacman -S --needed base-devel

## install and update paru aur
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
rm -rf $HOME/paru
paru

