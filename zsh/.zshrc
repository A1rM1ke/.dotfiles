#Environment file
ENVFILE=$HOME/.dotfiles/zsh/.zshenv

if test -f"$ENVFILE"; then
    source $ENVFILE
fi

#Import the Aliases from the Alias file
ALIASFILE=$HOME/.zshaliases

if test -f "$ALIASFILE"; then
    source $ALIASFILE
fi

#Import Prompt
PROFILE=$HOME/.zshprompt

if test -f "$PROFILE"; then
    source $PROFILE;
fi

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

zstyle ':vcs_info:git:*' formats "%F{160}%s:(%F{208}%b%F{160}) "

setopt PROMPT_SUBST

#Custom Prompt
#→ [Current Folder] [git info] $
PROMPT='%B%F{green}→ %F{33}%1~ ${vcs_info_msg_0_}%F{white}$ %b'
