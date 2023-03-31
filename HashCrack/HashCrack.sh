#!/bin/bash
rm -rf out.txt
sudo hashid -m -j -e hashes.txt
read -p "~Type: '1' for JTR or '2' for HashCat: " type
read -p "~Choose type from above: " t
read -p "~Provide full path of wordlist you want to use: " wl
if [[ $type -eq 1 ]]
	then 
	sudo john --format=$t $wl
elif [[ $type -eq 2 ]]
	then
	touch out.txt
	sudo hashcat -w 3 -m $t -a 0 -o out.txt hashes.txt $wl
fi
