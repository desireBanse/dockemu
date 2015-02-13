#!/bin/bash

#give the duration of the attack per bot
#duration=${1:-"9999999999"}

echo "runnging $duration"

server=$1



while 1;do
	./forever.py -t $server -p users
	sleep 1
done



