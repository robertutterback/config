unset HISTFILE # don't log bash history
export CLICOLOR=1 # enables coloring of terminal
export LSCOLORS=GxFxCxDxBxegedabagaced # specifies how to color specific items
export TERM="xterm-256color"
]50;SetProfile=ssh^G
# Platform-independent shell config
source ~/.profile

### Aliases ###

# bash-specific aliases
# none yet

### End Aliases ###

if [[ ! -n ${INSIDE_EMACS} ]]; then
    ### Prompt Definition ###
		PROMPT_COMMAND='if [ ${#PWD} -gt 30 ]; then myPWD=...${PWD:${#PWD}-30}; else myPWD=$PWD; fi'
    # Prompt options:
    # \u The name of the logged-in user
    # \h The hostname up to the first '.'
    # \H The full hostname
    # \n newline
    # \$ Shows a $ for regular user, # for root
    # \W working directory
		export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\$myPWD]\\\$ \[$(tput sgr0)\]"
		export PS2="> "
    ### End Promp Definition ###

    ### Welcome Message ###
		echo -ne "${Green}\nHello, $USER. Today is "; date
		echo -e "${White}"; cal ;
		echo -ne "${Cyan}";
		echo -ne "${Purple}Sysinfo: ";uptime ;echo ""
    ### End Welcome Message ###
fi
