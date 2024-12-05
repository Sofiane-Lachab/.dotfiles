# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc [CURRENTLY NOT IN FOLDER]
This is my custom .nanorc configuration for Nano. It sets up the autoindent, sets the key colors, allows for mouse use, sets the tabsize to 4, and configures the bold text.
## .bashrc [CURRENTLY NOT IN FOLDER]
This is my custom.bashrc configuration for Bash. It has set many different aliases and functions for ease of use.
## Makefile
My Makefile runs the linux.sh script after running the cleanup.sh script. If solely cleanup.sh is desired, run 'make cleanup.sh'.
## linux.sh
This script first checks if the operating system is linux, then goes on to create a '.TRASH' directory in the home directory. Then, it alters the '.nanorc' file in the home directory to the 'nanorc' file in the './etc/ folder. Finally, it enables the contents of the './etc/bashrc_custom' file by appending the '~/.bashrc' file with 'source ~/.dotfiles/etc/bashrc_custom'.
## cleanup.sh
This script undoes the actions of linux.sh, removing the '.nanorc' file from the home directory, the '.TRASH' directory from the home directory, and the 'source ~/.dotfiles/etc/bashrc_custom' line in the '~/.bashrc' file.
