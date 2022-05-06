#!/bin/bash

#Create Symlinks for git
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/.gitignore_global ~/.gitignore_global

#Create Symlinks for vim
ln -sf ~/.dotfiles/vim/.vim ~/.vim
ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc

#Create Symlinks for zsh
ln -sf ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -sf ~/.dotfiles/zsh/.zshaliases ~/.zshaliases
ln -sf ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

#Create Symlinks for tmux
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

#Create a bin directory in HOME and symlink scripts to it
mkdir -p $HOME/bin
ln -sf ~/.dotfiles/scripts/*.sh ~/bin/

#Sourcfe the Vim Plug installation
./installvimplug.sh
