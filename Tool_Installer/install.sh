#!/bin/bash
read -p "~Make Sure you have stable internet connectivity continue? Y/N:" awn
if [ $awn == Y ]
then
sudo apt install python3-setuptools python3-tk
git clone https://github.com/sc0tfree/mentalist
cd mentalist/
sudo python3 setup.py install
sudo apt install aircrack-ng
sudo apt install hashid
sudo apt install hashcat
sudo apt install john
sudo apt-get -y install cupp
sudo apt install rarcrack
fi
