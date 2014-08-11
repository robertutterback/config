if [ "$SHELL" = "zsh" ]; then
	 zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
fi;

speak() {
    if [[ "${1}" =~ -[a-z]{2} ]]; then
	local lang=${1#-};
	local text="${*#$1}";
    else
	local lang=${LANG%_*};
	local text="$*";
    fi;
mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=${lang}&q=${text}" &> /dev/null ;
}

alias ls='ls --color'
alias la='ls -A --color'
alias ll='ls -l --color'

alias java7='/usr/lib/jvm/java-7-openjdk-amd64/bin/java'
alias junitc='javac -cp /usr/share/java/junit4.jar:.'
alias junit='java7 -cp .:/usr/share/java/junit4.jar:. org.junit.runner.JUnitCore'
alias open='gnome-open'
alias cilkconf='./configure CFLAGS="-D_XOPEN_SOURCE=600 -D_POSIX_C_SOURCE=200809L"'
alias cilkc='cilkc -D_XOPEN_SOURCE=600 -D_POSIX_C_SOURCE=200809L'
alias say='echo "$1" | espeak -s 120 2>/dev/null'
alias eg='emacsclient -c'
alias et='emacsclient -c -nw'
alias starte='/usr/bin/emacs --daemon &'
alias kille='/usr/bin/emacsclient -e "(kill-emacs)"'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# This opens a new terminal with the Pro profile
# Unfortunately, I don't think it is currently possible to script a currently open Terminal
alias t.pro='gnome-terminal --window-with-profile=Pro'

### Environment Variables ###
#export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/opt/local/src/gmock-1.7.0/include:/opt/local/src/gmock-1.7.0/gtest/include
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/local/src/gmock-1.7.0/lib:/opt/local/src/gmock-1.7.0/gtest/lib

# Load Autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
