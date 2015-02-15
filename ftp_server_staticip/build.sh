#!/bin/bash

image=${1:-dockemu/ftp:staticip}

docker build --force-rm -t $image .
