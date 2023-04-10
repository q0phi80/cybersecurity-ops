#!/bin/bash

# This script checks for UID and prints out the appropriate message

if [[ `id -u` -ne 0 ]] ; then
	echo "You are not root!"
else
	echo "You are root, w00t w00t!"
fi
