#!/bin/bash
read -p "Hash: " h
sudo hashid -m -j -e $h
read -p "choose type from above: " t
read -p "type: '1' for JTR or '2' for HashCat: " type
if [[ $type -eq 1 ]]
	then 
	read -p "Provide file with hashes for JTR to work: " f
	sudo john --format=$t $f
elif [[ $type -eq 2 ]]
	then
	sudo hashcat -m $t $h
fi
