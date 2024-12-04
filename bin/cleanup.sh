#!/bin/bash

#removing .nanorc file from home directory
if [ -f "$HOME/.nanorc" ]; then
	rm "$HOME/.nanorc"
fi

#removing last line of .bashrc file
sed -i '/source ∼\/.dotfiles1\/etc\/bashrc custom/d' "$HOME/.bashrc"

#removing .TRASH directory
if [ -d "$HOME/.TRASH" ]; then

	rm -r "$HOME/.TRASH"
fi

