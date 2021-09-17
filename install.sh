#!/bin/bash

#Create Symlinks for git
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global

#Create Symlinks for vim
ln -s ~/.dotfiles/vim/.vim ~/.vim
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc

#Create Symlinks for zsh
ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/.dotfiles/zsh/.zshaliases ~/.zshaliases
ln -s ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc

#Create Symlinks for tmux
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

#Sourcfe the Vim Plug installation
./installvimplug.sh
