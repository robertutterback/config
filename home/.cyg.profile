if [ "$SHELL" = "zsh" ]; then
	 zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
fi;

alias ls='ls --color'
alias la='ls -A --color'
alias ll='ls -l --color'

alias eg='emacsclient -c'
alias et='emacsclient -c -nw'
alias starte='/usr/bin/emacs --daemon &'
alias kille='/usr/bin/emacsclient -e "(kill-emacs)"'

alias open='cygstart'

alias cls='tput clear'
alias cdc='cd /cygdrive/c'
alias cdd='cd /cygdrive/d'

# @TODO fix for windows
#alias pbcopy='xclip -selection clipboard'
#alias pbpaste='xclip -selection clipboard -o'

# Load Autojump
#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
