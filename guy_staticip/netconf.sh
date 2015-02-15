#!/bin/bash



echo "auto eth0" >> /etc/network/interfaces

echo "iface eth0 inet static" >> /etc/network/interfaces

echo "address 172.17.5.100" >> /etc/network/interfaces

echo "netmask 255.255.0.0" >> /etc/network/interfaces

echo "gateway 172.17.42.1"

ifup eth0

/etc/init.d/networking restart

cat /etc/network/interfaces
