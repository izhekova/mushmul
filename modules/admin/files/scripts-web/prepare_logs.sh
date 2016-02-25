#!/bin/sh

###  script to prepare the latest log for download to lonag-tst07

## Created David Malka 30 May 2013

logFileLocation="/home/dariol/files_to_send"
logs="/var/opt/intershop/eserver2/log/httpd"
lastLog="`ls -1r $logs/access-*.log | head -1`"

/bin/cp $lastLog $logFileLocation

/bin/chown -R dariol:dariol /home/dariol/files_to_send

/bin/chmod 755 /home/dariol/files_to_send