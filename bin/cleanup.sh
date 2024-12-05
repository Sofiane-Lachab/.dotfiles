#!/bin/bash

# Removes the .nanorc file from home directory
rm ~/.nanorc

# Deletes last line that was previously added to .bashrc
sed -i "s/source ~\/.dotfiles\/etc\/bashrc_custom//" ~/.bashrc

# Removes the .TRASH directory from the home directory
rm -rf ~/.TRASH
