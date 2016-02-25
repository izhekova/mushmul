#!/bin/bash
# command <hour> minute1 minute2 minute3 minute4 minute5

TODAY=$(date +"%Y%m%d")
D=5
var1=`sudo nice grep -c ":$1:$2:" /var/opt/intershop/eserver2/log/httpd/access-$(date +"%Y%m%d")-0000.log;`
var2=`sudo nice grep -c ":$1:$3:" /var/opt/intershop/eserver2/log/httpd/access-$(date +"%Y%m%d")-0000.log;`
var3=`sudo nice grep -c ":$1:$4:" /var/opt/intershop/eserver2/log/httpd/access-$(date +"%Y%m%d")-0000.log;`
var4=`sudo nice grep -c ":$1:$5:" /var/opt/intershop/eserver2/log/httpd/access-$(date +"%Y%m%d")-0000.log;`
var5=`sudo nice grep -c ":$1:$6:" /var/opt/intershop/eserver2/log/httpd/access-$(date +"%Y%m%d")-0000.log;`
SUM=$(( var1 + var2 + var3 + var4 + var5 ))
AVG=$(( SUM / D ))

echo "@ $1:$2 - $var1"
echo "@ $1:$3 - $var2"
echo "@ $1:$4 - $var3"
echo "@ $1:$5 - $var4"
echo "@ $1:$6 - $var5"
echo "-------------"
echo "Average is $AVG"

exit 0
