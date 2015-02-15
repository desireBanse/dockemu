#!/bin/bash


./netconf.sh


sleep 3
ifconfig eth0
 /usr/bin/supervisord -c /tmp/supervisord.conf