# .mac.profile
# For Mac OS X-specific shell config

PRINTER=Chocolate

### Path ###

# MacPorts Installer addition on 2012-08-22_at_15:30:35: adding an appropriate PATH variable for use with MacPorts.
PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH
### End Path ###

export PINENTRY_USER_DATA="USE_CURSES=1"

### Aliases ###
# Whenever I call a shell script, it's likely because I want to change the profile of the terminal.
alias t.pro='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Pro\""'
alias t.ocean='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Ocean\""'
alias t.novel='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Novel\""'
alias t.basic='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Basic\""'
alias t.silver='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Silver Aerogel\""'

# Battery life
#alias bat="ioreg -l | grep -i capacity | tr '\n' ' ' | awk '{printf(\"%.2f%%\", $10/$5 * 100)}'"

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias et='emacs.sh'
# alias et='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t -c'
alias eg='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c'
alias kille='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -e "(kill-emacs)"'
alias starte='/Applications/Emacs.app/Contents/MacOS/Emacs --daemon &'
#alias mutt='mutt.sh'
#alias ssh='ssh.sh'

alias junitc='javac -cp /usr/share/java/junit.jar:.'
alias junit='java -cp .:/usr/share/java/junit.jar:. org.junit.runner.JUnitCore'

alias la='ls -A'
alias ll='ls -l'

alias run='open -a'

### End Aliases
### Enhancements
# Completion should be /Applications/ aware
compctl -f -x 'p[2]' -s "`/bin/ls -d1 /Applications/*/*.app \
					 /Applications/*.app | sed 's|^.*/\([^/]*\)\.app.*|\\1|;s/ /\\\\ /g'`" \
					 -- open
### End Enhancements
