#! /bin/bash

# This is my first bash script
echo $PWD
echo "My current working directory is $PWD"
echo "My loging username is $USER"
echo "------------------------------------"
echo "We are now going to use user-defined variables."
# Defining my variables
COLOR1="Pink"
COLOR2="Red"
echo "My favorite color is $COLOR2"
echo -e "Listing the files in this directory: \n$(ls)"
