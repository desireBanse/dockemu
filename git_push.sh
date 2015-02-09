#!/bin/bash
d=$(date)
message=${1:-$d}

git diff --stat origin/master
git add .
git commit --all -v  -m "$message"
git push origin oscar3
