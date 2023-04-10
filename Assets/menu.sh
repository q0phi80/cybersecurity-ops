#!/bin/bash

# Create a simple menu system

days='Mon Tues Wed Thurs Fri Sat Sun Exit'
PS3='Select a day:'

select d in $days
do
	if [ $d == "Exit" ]
	then
		break
	fi
	echo "You selected ${d}, have a nice day:-)"
done
echo Bye
