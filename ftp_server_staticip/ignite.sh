#!/bin/bash


bash /netconf.sh


sleep 3
ifconfig eth0
/usr/sbin/proftpd
/usr/bin/supervisord -c /tmp/supervisord.conf