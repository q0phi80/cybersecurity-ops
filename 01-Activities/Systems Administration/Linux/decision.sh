#! /bin/bash

# Prompt the user for a directory name and then creates it with mkdir
echo -n "Enter a directory name you would want to create:"
read new_dir
# Save the user's current directory in a different variable so we can re-use the variable later
curr_dir=$(pwd)
# Check to ensure the new directory name provided doesn't already exist
[[ -d $new_dir ]] && echo $new_dir already exists, choose a new and different name! && exit
# If the name of the directory provided is unique, then proceed to create it
mkdir $new_dir
# Use the cd command to change directory into the new directory and display it's location with pwd command
cd $new_dir
pwd
# Use the touch command to create several empty files and run ls command on them to verify they are empty
for f in 1 2 3 4
do 
  touch file$f
done
echo You can find your newly created directory at: $(pwd)
