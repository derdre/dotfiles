#!/bin/bash
# shell script to pretend i3status output

i3status -c ~/.config/i3status/config | while :
do
	read line
	LG=$(setxkbmap -query | awk '/variant/{print $2}')
	echo " $LG | $line" || exit 1
done

