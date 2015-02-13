#!/bin/bash

image=${1:-dockemu/ftp}

docker build --force-rm -t $image .