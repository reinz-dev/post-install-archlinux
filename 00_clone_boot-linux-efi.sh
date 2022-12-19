#!/bin/bash

cd $HOME

git clone https://github.com/reinzcity/boot-linux-efi.git
if [[ "$?" != 0 ]]; then
  if [[ -d "boot-linux-efi" ]]; then
    echo $(pwd)
    cd boot-linux-efi
    echo $(pwd)
    git reset --hard HEAD
    git pull
    bash ./install-boot.sh
  fi
else
  echo $(pwd)
  cd boot-linux-efi
  echo $(pwd)
  bash ./install-boot.sh
fi
