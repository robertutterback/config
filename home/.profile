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

# For the future:
# lynx -nonumbers -nolist -dump "http://m.4info.com/search?searchQuery=StLouis+Cardinals" | grep -i -B2 -A4 "Status"
#  lynx -nonumbers -dump 'http://scores.espn.go.com/mlb/standings' |
# egrep -A12 "National League"
