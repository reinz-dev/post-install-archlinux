#!/bin/bash

if [[ "$UID" != 0 ]]; then
    echo "USER NOT ROOT"
    sudo su
    exit
else
    echo "USER IS ROOT"
fi

mv /etc/mkinitcpio.d /etc/mkinitcpio.d.bak

mv /etc/mkinitcpio.conf /etc/mkinitcpio.conf.bak

cp --recursive --force --remove-destination --no-dereference --preserve=links . /etc/

mkinitcpio -p linux
