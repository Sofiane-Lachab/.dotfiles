#!/bin/bash

# Checks if operating system is linux
if [ $(uname) = "Linux" ]; then
	:
else
	echo "ERROR: NOT RUNNING ON LINUX" >> linuxsetup.log
	exit
fi

# Makes .TRASH directory if doesn't already exist
mkdir -p ~/.TRASH

# Checks if .nanorc exists in home directory and changes it
if [ -f "~/.nanorc" ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "'.nanorc' was changed to '.bup_nanorc'" >> linuxsetup.log
fi

# Overwrites content of etc/nanorc to ~/.nanorc
cat ./etc/nanorc > ~/.nanorc

# Adds following statement to ~/.bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
