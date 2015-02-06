#!/usr/bin/python
import subprocess
import sys, os

ROOT=os.path.dirname(os.path.abspath(__file__))

bots=2
image="dockemu"

try:
	bots = input('How many bots do you need?')
	print('Hello', bots)
except:
	sys.exit(9)

cmd="echo %s"%bots
p = subprocess.Popen(cmd , shell=True)

