#!/bin/bash
#command <hour> minute1 minute2 minute3 minute4 minute5

TODAY=$(date +"%Y%m%d")
D=5
LINES_COUNT_M1=`sudo nice grep -c ":$1:$2:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log`
TOTAL_M1=`sudo nice grep ":$1:$2:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log | grep "ViewCheckoutShipping" | grep "POST" | awk -F" " '{print $NF}' | awk '{total+=$0}END{print total}'`
AVG_M1=$(( TOTAL_M1 / LINES_COUNT_M1 ))

LINES_COUNT_M2=`sudo nice grep -c ":$1:$3:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log`
TOTAL_M2=`sudo nice grep ":$1:$3:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log | grep "ViewCheckoutShipping" | grep "POST" | awk -F" " '{print $NF}' | awk '{total+=$0}END{print total}'`
AVG_M2=$(( TOTAL_M2 / LINES_COUNT_M2 ))

LINES_COUNT_M3=`sudo nice grep -c ":$1:$4:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log`
TOTAL_M3=`sudo nice grep ":$1:$4:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log | grep "ViewCheckoutShipping" | grep "POST" | awk -F" " '{print $NF}' | awk '{total+=$0}END{print total}'`
AVG_M3=$(( TOTAL_M3 / LINES_COUNT_M3))

LINES_COUNT_M4=`sudo nice grep -c ":$1:$5:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log`
TOTAL_M4=`sudo nice grep ":$1:$5:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log | grep "ViewCheckoutShipping" | grep "POST" | awk -F" " '{print $NF}' | awk '{total+=$0}END{print total}'`
AVG_M4=$(( TOTAL_M4 / LINES_COUNT_M4 ))

LINES_COUNT_M5=`sudo nice grep -c ":$1:$6:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log`
TOTAL_M5=`sudo nice grep ":$1:$6:" /var/opt/intershop/eserver2/log/httpd/access-"${TODAY}"-0000.log | grep "ViewCheckoutShipping" | grep "POST" | awk -F" " '{print $NF}' | awk '{total+=$0}END{print total}'`
AVG_M5=$(( TOTAL_M5 / LINES_COUNT_M5 ))

TOTAL_LINES_COUNT=$(( LINES_COUNT_M1 + LINES_COUNT_M2 + LINES_COUNT_M3 + LINES_COUNT_M4 + LINES_COUNT_M5))
TOTAL_ALL=$(( TOTAL_M1 + TOTAL_M2 + TOTAL_M3 + TOTAL_M4 + TOTAL_M5))
TOTAL_AVG=$(( TOTAL_ALL / TOTAL_LINES_COUNT ))

echo "average loadtime @ $1:$2 --> $AVG_M1"
echo "average loadtime @ $1:$3 --> $AVG_M2"
echo "average loadtime @ $1:$4 --> $AVG_M3"
echo "average loadtime @ $1:$5 --> $AVG_M4"
echo "average loadtime @ $1:$6 --> $AVG_M5"
echo "------------------------"
echo "average loadtime per 5 mins --> $TOTAL_AVG"

exit 0








