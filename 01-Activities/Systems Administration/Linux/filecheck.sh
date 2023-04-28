#!/bin/bash

# This script uses the test command to check if a file exist or not

if test -f /etc/passwd; then
	echo "File exists"
else
	echo "File does not exist!"
fi

# check if /tmp/ directory does exist
