#! /bin/bash

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home.tar.gz

tar -czf $output $input 2>/dev/null
echo "Backup of $input completed!"
echo "Details about the output backup file is as follows:"
ls -l $output
