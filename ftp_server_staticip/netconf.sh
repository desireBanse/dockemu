#!/bin/bash

/sbin/ip addr flush dev eth0

echo "auto eth0" >> /etc/network/interfaces

echo "iface eth0 inet static" >> /etc/network/interfaces

echo "address $ipaddress" >> /etc/network/interfaces

echo "netmask 255.255.0.0" >> /etc/network/interfaces

echo "gateway 172.17.42.1" >> /etc/network/interfaces
 
/sbin/ifup eth0

/etc/init.d/networking restart

/bin/cat /etc/network/interfaces
