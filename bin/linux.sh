#!/bin/bash
#if statement reports error if the operating system type is not Linux and exits immediately
if [ "$(uname)" = "Linux" ]; then
	echo "Error" >> linuxsetup.log
	exit 1
fi

#if statement makes .TRASH directory in home directory if it does not exist already
if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
fi

#if statement renames .nanorc file if it exists in home directory and alerts user
if [ -f "$HOME/.nanorc" ]; then
	mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
	echo ".nanorc file changed to .bup_nanorc" >> linuxsetup.log
fi

#overwrites contents of nanorc to .nanorc in home directory
cat /etc/nanorc > "$HOME/.nanorc"

#adds statement to end of .bashrc file
echo "source~/.dotfiles1/etc/bashrc_custom" >> "$HOME/.bashrc"

