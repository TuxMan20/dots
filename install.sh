#!/bin/bash
############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dots
# Credit: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

########## Variables

dir=~/dots                    # dotfiles directory
olddir=~/old_dots             # old dotfiles backup directory
files="vimrc"    # list of files/folders to symlink in homedir
# vim zshrc oh-my-zsh

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/old_dots/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# Installing Vim-Plug
echo "Installing Vim-Plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Vim-Plug is installed!"
