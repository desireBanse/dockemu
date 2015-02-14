#!/bin/bash

image=${1:-dockemu/goodguys:server}

docker build --force-rm -t $image .
