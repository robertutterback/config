# Color setup
autoload -U colors && colors

# Prompt

# PROMPT='$(_user_host) in ${_current_dir} $(git_prompt_info)
# $(prompt_char) $(_admin_level) $(git_prompt_status) %{$reset_color%}'
PROMPT='$(_user_host) in ${_current_dir}
$(_admin_level) %{$reset_color%}'

PROMPT2=$'\t''%{$fg[red]%}>%{$reset_color%} '

#RPROMPT='$(git_prompt_status)'
# battery charge scripts seems too slow
# $(battery_charge)'

local _current_dir="%{$fg_bold[green]%}%~%{$reset_color%}"

function _user_host() {
    if [[ -n $SSH_CONNECTION ]]; then
        host="at %{fg[yellow]%}%m%{$reset_color%}"
    fi
    echo "%{$fg[magenta]%}%n%{$reset_color%}$host"
}

function battery_charge {
				 echo `$BAT_CHARGE` 2>/dev/null
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
		echo '○'
}

function _admin_level() {
    if [[ $USER == "root" ]]; then
        echo '#'
    else
        echo '$'
    fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="on git:%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▴ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[magenta]%}◒ "

# Program output
# export LSCOLORS="exfxcxdxbxegedabagacad"
# export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
# export GREP_COLOR='1;33'

bindkey "^S" history-incremental-pattern-search-forward
