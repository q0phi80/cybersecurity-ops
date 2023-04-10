#!/bin/bash

if [[ `id -u` = 0 ]] ; then
	echo "You are root, w00t w00t!"
elif [[ `id -u` = 1000 ]] ; then
	echo "You are vagrant user"
else
	echo "You are none of the users I expected!"
fi
