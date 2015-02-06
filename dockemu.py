#!/usr/bin/python
import subprocess
import sys, os

ROOT=os.path.dirname(os.path.abspath(__file__))

bots=2
image="dockemu"
server="192.168.8.66"
duration="10"
delay="5"

# number of bots
print "####### WELCOME TO DOCKEMU V.1.0 ####### "
try:
	bots = input('How many bots do you need? [defaults=%s]'%bots)
except:
	print "[WARNING] bots not provided, using defaults (%s)"%bots
	print

#server to attack
try:
	server = input('Enter the IP of the server to attack? [defaults=%s]'%server)
except:
	print "[WARNING] server not provided, using defaults (%s)"%server
	print 


#duration of the experiment
try:
	duration = input('Enter the duration of the attack [defaults=%s]'%duration)
except:
	print "[WARNING] duration not provided, using defaults (%s)"%duration
	print 


#delay between docker bots 
try:
	delay = input('Enter the delay between each docker bot [defaults=%s]'%delay)
except:
	print "[WARNING] delay not provided, using defaults (%s)"%delay
	print




for i in range(bots):
	cmd="docker run -d --name dockemu-%s -e 'server=%s' dockemu"%(i,server)
	print cmd
	cmd="echo %s %s %s %s "%(bots,i, duration , delay)
	p = subprocess.Popen(cmd , shell=True)

