# Platform-independent shell config
# Only for login shells

## Aliases
alias ..='cd ..'
alias ...='cd ../..'

## Environment variables

PATH=~/bin:~/.scripts:$PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH
export LD_LIBRARY_PATH
export EDITOR='emacsclient'
export ALTERNATE_EDITOR="emacs"
