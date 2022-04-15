#Turn on ssh-agent
eval `ssh-agent -s` > /dev/null

#Export GPG Teletype
export GPG_TTY=$(tty)

#Add the user local bin to path
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

#Use the rust cargo environment
if [ -d "$HOME/.cargo" ];  then
    . "$HOME/.cargo/env"
fi
