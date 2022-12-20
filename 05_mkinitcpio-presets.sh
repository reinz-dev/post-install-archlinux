#!/bin/bash

if [[ "$UID" != 0 ]]; then
  echo "USER IS ROOT"
  sudo su
  exit
else
  echo "USER IS ROOT"
fi

pacman --needed -S linux$(uname -r | sed s/"\."/""/g | cut -c1-3)-headers

cd mkinitcpio-presets

bash make.sh
