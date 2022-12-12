#!/bin/bash

if [[ "$UID" != 0 ]]; then
    echo "USER NOT ROOT"
    sudo su
    exit
else
    echo "USER IS ROOT"
fi

echo "proses backup"
sudo mv /etc/mkinitcpio.d /etc/mkinitcpio.d.bak
sudo mv /etc/mkinitcpio.conf /etc/mkinitcpio.conf.bak
echo "backup success"
echo " "

echo "proses copy file"
cp --recursive --force --remove-destination --no-dereference --preserve=links . /etc/
echo "success copy file"
echo " "

mkinitcpio -p linux

echo "all done enjoy"
