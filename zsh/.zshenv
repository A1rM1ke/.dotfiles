#!/bin/zsh
#Turn on ssh-agent
eval `ssh-agent -s`

#C and C++ paths
export C_INCLUDE_PATH="$C_INCLUDE_PATH:/usr/local/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/local/include"

#Colors for ls
export LSCOLORS="ExGxcxdxcxegedabagacad"

#Add the user local bin to path
export PATH="$HOME/.local/bin:$PATH"
