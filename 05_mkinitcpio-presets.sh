#!/bin/bash

sudo pacman --needed -S linux$(uname -r | sed s/"\."/""/g | cut -c1-3)-headers

cd mkinitcpio-presets

bash make.sh
