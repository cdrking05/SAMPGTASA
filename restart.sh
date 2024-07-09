#!/bin/sh
log=samp.log
dat=`date`
samp="/home/ubuntu/samp03/samp03svr"
 
echo "${dat} watchdog script starting." >>${log}
while true; do
        echo "${dat} Server exited, restarting..." >>${log}
        mv ./server_log.txt ./server_log.`date '+%m%d%y%H%M%S'`
        ${samp} >> $log
	sleep 2
done