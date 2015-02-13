#!/bin/bash

image=${1:-dockemu/goodguys}

docker build --force-rm -t $image .