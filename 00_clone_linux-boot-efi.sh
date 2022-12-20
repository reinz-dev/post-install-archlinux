#!/bin/bash

cd $HOME

git clone https://github.com/reinzcity/boot-linux-efi.git
if [[ "$?" != 0 ]]; then
    if [[ -d "linux-boot-efi" ]]; then
        echo $(pwd)
        cd linux-boot-efi
        echo $(pwd)
        git reset --hard HEAD
        git pull
        bash ./install-boot.sh
    fi
else
    echo $(pwd)
    cd linux-boot-efi
    echo $(pwd)
    bash ./install-boot.sh
fi
