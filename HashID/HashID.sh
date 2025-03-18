#!/bin/bash
read -p "~Hash: " h
sudo hashid -m -j -e $h
