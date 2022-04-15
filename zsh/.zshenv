#!/bin/zsh
#Turn on ssh-agent
eval `ssh-agent -s` > /dev/null

#Export GPG Teletype
export GPG_TTY=$(tty)

#C and C++ paths
export C_INCLUDE_PATH="$C_INCLUDE_PATH:/usr/local/include"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/local/include"

#Colors for ls
export LSCOLORS="ExGxcxdxcxegedabagacad"

#Add the user local bin to path
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo" ];  then
    . "$HOME/.cargo/env"
fi
