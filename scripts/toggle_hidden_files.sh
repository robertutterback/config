#!/bin/sh

SHOW=$(defaults read com.apple.finder AppleShowAllFiles)

if [ "$SHOW" == 'true' ]
then
    SHOW=false
else
    SHOW=true
fi

defaults write com.apple.finder AppleShowAllFiles $SHOW
echo Setting ShowAllFiles to $SHOW
killall Finder
