#!/bin/bash

if [[ "$UID" != 0 ]]; then
  echo "USER IS ROOT"
  sudo $0
  exit
else
  echo "USER IS ROOT"
fi

paru -S plymouth-git

THEME_NAME="Cat"

if [[ -n "$THEME_NAME" ]]; then
  echo "Non empty"
else
  echo "Theme name is empty. Exit"
  else
fi

plymouth-set-default-theme $THEME_NAME

echo -e "\nPlymouth config\n"
cat /etc/plymouth/plymouthd.conf
