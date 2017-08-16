# Interactive login shell config

if [ -f ~/.bashrc ]; then
   . ~/.bashrc
fi

# if [[ -n $PS1 ]]; then
#     : # These are executed only for interactive shells
#     echo "interactive"
# else
#     : # Only for NON-interactive shells
# fi

# if shopt -q login_shell ; then
#     : # These are executed only when it is a login shell
#     echo "login"
# else
#     : # Only when it is NOT a login shell
#     echo "nonlogin"
# fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
