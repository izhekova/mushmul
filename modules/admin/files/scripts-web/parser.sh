#!/bin/bash

LOG_FILE=/var/opt/intershop/eserver2/log/httpd/access-"$(date +%Y%m%d-0000)".log
RES_FILE=/usr/local/scripts/results/results-"$(date +%Y%m%d)".txt
LAST_MIN_FILE=/usr/local/scripts/results/last_min-"$(date +%Y%m%d)".log
REQ_PER_MIN=/usr/local/scripts/results/requests-"$(date +%Y%m%d)".txt

#if [ -f $LOG_FILE ];
#then
#   echo "File $FILE exists."
#else
#   echo "File $FILE does not exist."
#fi

grep "$(date -d "1 minutes ago" +"%d/%b/%Y:%H:%M")" $LOG_FILE > $LAST_MIN_FILE

echo -e "Top 10 URLs with slowest request time for $(date -d "1 minutes ago" +"%d/%b/%Y:%H:%M") \n" >> $RES_FILE
echo -e "Request time    URL" >> $RES_FILE
echo -e "-----------------------------------------------------------" >> $RES_FILE
cat $LAST_MIN_FILE | awk '{print $NF" " $7 }'|cut -d? -f1| sort -nr|head >> $RES_FILE
#echo -e "\nRequests per minute:" >> $REQ_PER_MIN
grep "$(date -d "1 minutes ago" +"%d/%b/%Y:%H:%M")" $LAST_MIN_FILE| cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":"$3}' | sort -nk1 -nk2 | uniq -c | awk '{ if ($1 > 10) print $0}' >> $REQ_PER_MIN

echo -e "\n" >> $RES_FILE