#C and C++ paths
#export C_INCLUDE_PATH="$C_INCLUDE_PATH:/usr/local/include"
#export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/local/include"

#Colors for ls
export LSCOLORS="ExGxcxdxcxegedabagacad"

#Add the user local bin to path
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

#Use the rust cargo environment
if [ -d "$HOME/.cargo" ];  then
    . "$HOME/.cargo/env"
fi

#Add the go directory to path
if [ -d "/usr/local/go/bin" ];  then
    export GOPATH=$HOME/go
    export PATH=$PATH:/usr/local/go/bin
    export PATH=$PATH:$GOROOT/bin
    export PATH=$PATH:$GOPATH/bin
fi
