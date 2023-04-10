#! /bin/bash

echo "##################################################################"
echo "			Automated User Account Management		"
echo "##################################################################"

## Change directory into the root directory
cd /

## Prompt the Linux Admin for the name of the user account to create
echo -n "[+] Enter a new username to create:>>"
read name

## Check if the username already exists
id $name 2>/dev/null

## A while loop to check if the exit code is equal to 0, meaning the username already exists
while [ $? -eq 0 ]
do 
  echo -n "[-] The username you chose already exists."
  echo ""
  echo -n "[+] Please, enter a new and unique username:>>"
  read name
  id $name 2>/dev/null
done

## After we have confirmed the new username is unique, we ask for a group's name
## Prompt for a group name
echo -n "[+] Enter a group name:>>"
read group

## Check if the group already exist
cat /etc/group | grep $group

## A While loop to check if the exit code is equal to 0, which means the group already exists
while [ $? -eq 0 ]
do
  echo -n "[-] The group already exists."
  echo ""
  echo -n "[+] Please, enter a new and unique group name:>>"
  read group
  cat /etc/group | grep $group
done

# Once a unique group name is chosen, we proceed to create it
groupadd $group

## We create the username, give the user a Bash login shell and add the user to the group created
useradd -m -s /bin/bash -g $group $name

## The admin is prompted to create password for the new user account
passwd $name
echo -e "[*] User account created successfully!"

## Create a directory for the user
mkdir $name

## Make the user owner of the group and directory
chown $name:$group /$name

## Give the user and group owners full control over the directory
chmod 770 /$name
