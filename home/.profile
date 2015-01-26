# Platform-independent shell config
# Only for login shells

## Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'

## Environment variables

PATH=~/bin:~/.scripts:$PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
    LD_LIBRARY_PATH=/usr/local/lib
else
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
fi

export PATH
export LD_LIBRARY_PATH
export EDITOR='emacsclient'
export ALTERNATE_EDITOR="vim"

# For the future:
# lynx -nonumbers -nolist -dump "http://m.4info.com/search?searchQuery=StLouis+Cardinals" | grep -i -B2 -A4 "Status"
#  lynx -nonumbers -dump 'http://scores.espn.go.com/mlb/standings' |
# egrep -A12 "National League"

man() {
	  env \
		    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		    LESS_TERMCAP_md=$(printf "\e[1;31m") \
		    LESS_TERMCAP_me=$(printf "\e[0m") \
		    LESS_TERMCAP_se=$(printf "\e[0m") \
		    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		    LESS_TERMCAP_ue=$(printf "\e[0m") \
		    LESS_TERMCAP_us=$(printf "\e[1;32m") \
			  man "$@"
}

case "$OSTYPE" in
linux-gnu)
	if [ -f ~/.lnx.profile ]; then
		. ~/.lnx.profile
	fi
	;;
darwin*)
	if [ -f ~/.mac.profile ]; then
  		. ~/.mac.profile
  	fi
	;;
esac
