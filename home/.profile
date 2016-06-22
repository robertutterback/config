# Platform-independent shell config
# Only for login shells

## Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'

mkcd () { mkdir -p "$@" && cd "$@"; }

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)
                echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

## Environment variables

export GOPATH=$HOME/go
PATH=~/bin:~/.scripts:$PATH:$GOPATH/bin

if [ -z "$LD_LIBRARY_PATH" ]; then
    LD_LIBRARY_PATH=/usr/local/lib
else
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
fi

export PATH
export LD_LIBRARY_PATH
export EDITOR="emacsclient -nw"
export ALTERNATE_EDITOR="vim"

# For the future:
# @TODO
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
linux*)
	if [ -f ~/.lnx.profile ]; then
		. ~/.lnx.profile
	fi
	;;
darwin*)
	if [ -f ~/.mac.profile ]; then
  		. ~/.mac.profile
  	fi
	;;
cygwin)
	if [ -f ~/.cyg.profile ]; then
		. ~/.cyg.profile
	fi
	;;
*)
	@echo "Unsupported OS."
	;;
esac
