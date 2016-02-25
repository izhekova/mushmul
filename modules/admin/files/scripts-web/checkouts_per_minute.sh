#!/bin/bash
#command <HH:MM>
TODAY=$(date +"%Y%m%d")
CHECKOUTS_MINUTE=`sudo nice grep ":$1:" /var/opt/intershop/eserver2/log/httpd/access-$(date +"%Y%m%d")-0000.log | grep "POST" | grep -c "ViewCheckoutS"`

echo "Checkouts per minute @${1} --> $CHECKOUTS_MINUTE";
exit 0
