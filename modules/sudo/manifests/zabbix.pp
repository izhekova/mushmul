class sudo::zabbix {
  sudo::conf { 'zabbix':
    priority         => 20,
    content          => 
    "Defaults:zabbix !requiretty \nzabbix ALL=(root) NOPASSWD:/usr/sbin/dmidecode *,/bin/netstat *,/usr/bin/tail *,/usr/bin/netstat *,/usr/sbin/eserver2 status,/bin/grep *,/bin/ls *" ,
  }
}