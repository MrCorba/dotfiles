#!/bin/bash

dotfiles_dir=~/dotfiles/system
backup_dir=~/dotfiles_bu
files="vimrc"

echo "Creating backup directory at $backup_dir"
mkdir -p $backup_dir
echo "Directory created"


for file in $files; do
	echo "Backup existing $file"
	mv ~/.$file $backup_dir/$file
	echo "Creating symlink for $file"
	ln -s $dotfiles_dir/$file ~/.$file
done
