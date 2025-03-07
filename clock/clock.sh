#Author : Gurvansh
#Time : Fri Mar 7 10:40:46 IST 2025

#!/bin/bash
#This is a digital clock using shell

#Colors
red=$'\e[1;31m'
blue=$'\e[1;34m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'

#Variable
var=1

# CTRL+C Termination Message
trap "echo -e '\nClock Terminated!'; exit" SIGINT

#Main
while true
do	
	if [ $((var % 3)) -eq 1 ]
	then 
		clear
		echo ""
		echo ""
		echo THIS IS A DIGITAL CLOCK ⏰ : $blue $(date +"%T") # Blue Color Clock
		sleep 1s
	elif [ $((var % 3)) -eq 2 ]
	then
		clear
		echo ""
		echo ""
		echo THIS IS A DIGITAL CLOCK ⏰ : $red $(date +"%T") # Red Color Clock
		sleep 1s
	else
		clear
		echo ""
		echo ""
		echo THIS IS A DIGITAL CLOCK ⏰ : $green $(date +"%T") # Green Color Clock
		sleep 1s
	fi
	((var++))  # Incrementing the variable
done
