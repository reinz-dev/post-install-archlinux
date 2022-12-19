!#!/bin/bash

cd $HOME

if [[ "$?" != 0 ]]; then
  if [[ -d "dotfiles" ]]; then
    echo $(pwd)
    cd dotfiles
    echo $(pwd)
    cd .themes
    echo $(pwd)
    cd WhiteSur-gtk-theme
    ./install.sh -l
    ./install.sh -g -b
    ./install.sh -F
    ./install.sh -N glassy
    ./install.sh -f alt

  fi
else
    echo $(pwd)
    cd dotfiles
    echo $(pwd)
    cd .themes
    echo $(pwd)
    cd WhiteSur-gtk-theme
    ./install.sh -l
    ./install.sh -g -b
    ./install.sh -F
    ./install.sh -N glassy
    ./install.sh -f alt
fi

cd WhiteSur-icon-theme

./install.sh

