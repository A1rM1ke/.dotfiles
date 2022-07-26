#Turn on ssh-agent
eval `ssh-agent -s` > /dev/null

#Export GPG Teletype
export GPG_TTY=$(tty)

