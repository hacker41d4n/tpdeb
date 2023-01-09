#/bin/bash

su root

sudo apt update

sudo apt upgrade

sudo apt install dkms bc

sudo apt install linux-headers-$(uname -r)

echo "blacklist 8188eu" >> "/etc/modprobe.d/realtek.conf" 

echo "blacklist r8188eu" >> "/etc/modprobe.d/realtek.conf"

sudo rmmod r8188eu.ko

git clone https://github.com/aircrack-ng/rtl8188eus.git

cd rtl8188eus

sudo make

sudo make install

sudo modprobe 8188eu

lsusb