#!/bin/bash
sudo rm -rf hash.txt
read -p "~Please provide path of RAR: " p
rar2john $p > hash.txt
john hash.txt
