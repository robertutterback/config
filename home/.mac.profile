# .mac.profile
# For Mac OS X-specific shell config

### Path ###

# MacPorts Installer addition on 2012-08-22_at_15:30:35: adding an appropriate PATH variable for use with MacPorts.
export PATH=$HOME/.cabal/bin:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export GMOCK_DIR=/opt/local/src/gmock-1.7.0
export GTEST_DIR=$GMOCK_DIR/gtest
export FPATH="$FPATH:/opt/local/share/zsh/site-functions"
# Finished adapting your PATH environment variable for use with MacPorts.

### End Path ###
### Environment Variables

export PINENTRY_USER_DATA="USE_CURSES=1"
export PRINTER=Chocolate
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/local/src/gmock-1.7.0/lib:/opt/local/src/gmock-1.7.0/gtest/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/local/lib
export LIBRARY_PATH=$LIBRARY_PATH:/opt/local/lib
export INFOPATH=$INFOPATH:/opt/local/share/info

# Prevent hidden files from being copied, e.g. when using tar.
export COPYFILE_DISABLE=true

### End Environment Variables ###

### Aliases ###
# Whenever I call a shell script, it's likely because I want to change the profile of the terminal.
# TODO fix these for iTerm 2
# alias t.pro='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Pro\""'
# alias t.ocean='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Ocean\""'
# alias t.novel='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Novel\""'
# alias t.basic='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Basic\""'
# alias t.silver='osascript -e "tell application \"Terminal\" to set current settings of first window to settings set named \"Silver Aerogel\""'

# Battery life
#alias bat="ioreg -l | grep -i capacity | tr '\n' ' ' | awk '{printf(\"%.2f%%\", $10/$5 * 100)}'"

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias et='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t -c'
alias eg='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c'
alias kille='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -e "(kill-emacs)"'
alias starte='/Applications/Emacs.app/Contents/MacOS/Emacs --daemon &'

export EDITOR='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t -c'
export MAILDIR='~/Mail'
export MAILCONF='~/.mutt'

alias junitc='javac -cp /usr/share/java/junit.jar:.'
alias junit='java -cp .:/usr/share/java/junit.jar:. org.junit.runner.JUnitCore'

#alias coursera-dl='python2.7 /opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/courseradownloader/courseradownloader.py'
alias coursera-dl='~/src/coursera-dl/coursera-dl'

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

## Autojump
if [ -f /opt/local/etc/profile.d/autojump.zsh ]; then
    . /opt/local/etc/profile.d/autojump.zsh
fi
