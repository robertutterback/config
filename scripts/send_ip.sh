#!/bin/sh

IP_FILE=~/tmp/ipaddress
CURRENT_IP=$(curl -s -S http://ipecho.net/plain)

 if [ -f $IP_FILE ]; then
		 KNOWN_IP=$(cat $IP_FILE)
else
		 KNOWN_IP=
fi

if [ "$CURRENT_IP" != "$KNOWN_IP" ]; then
		echo $CURRENT_IP > $IP_FILE
		#mutt -s "My External IP is now "$CURRENT_IP youremail@blah.com < $IPFILE
		mail -s "New Mac IP Address" scarlock@lavabit.com < $IP_FILE
fi
