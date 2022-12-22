#!/bin/bash

echo "proses copy file"
yes | cp -rf mkinitcpio.d/ /etc/
yes | cp -rf mkinitcpio.conf /etc/
echo "success copy file"
echo " "

mkinitcpio -p linux
echo " "
echo "all done enjoy"
