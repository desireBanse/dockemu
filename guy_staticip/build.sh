#!/bin/bash

image=${1:-dockemu/guy_staticip}

docker build --force-rm -t $image .
