#!/bin/bash

image=${1:-dockemu/botnet}

docker build --force-rm -t $image .