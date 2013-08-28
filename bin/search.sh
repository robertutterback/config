#!/bin/bash
# Open a search in Conkeror
# Usage: search.sh 

browser='open -a Conkeror' # could also put a text-based browser here

site=$1
query=$2+$3+$4+$5+$6+$7+$8+$9 # hack to pick up >1 search terms

case $site in
"google" ) $browser 'http://www.google.com/search?q='$query;;
"wikipedia" ) $browser 'http://en.wikipedia.org/wiki/Special\:Search?search='$query;;
"duckduckgo" ) $browser 'http://duckduckgo.com/?q='$query;;
* ) echo "Unknown site";;
esac
