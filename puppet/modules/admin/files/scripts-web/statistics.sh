#!/bin/bash

var1=`sh avg_pages_per_min.sh $1 $2 $3 $4 $5 $5`
var2=`sh avg_page_load.sh $1 $2 $3 $4 $5 $5`
echo "Server $HOSTNAME >>";
echo "Average pages  >  `echo $var1 | grep -i "average" | awk -F" " '{print $NF}'`";
echo "Average loadtime > `echo $var2 | grep -i "5 mins" | awk -F" " '{print $NF}'`";
echo "`sh checkouts_per_minute.sh $1:$2`";
exit 0
