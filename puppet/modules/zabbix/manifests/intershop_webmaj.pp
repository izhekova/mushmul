class zabbix::intershop_webmaj {
  
  file { "/etc/zabbix/zabbix_agentd.d/intershop-webserver.conf":
               ensure  => present,
               mode    => "0644",
               owner   => "root",
               group   => "root",
               notify  => Service["zabbix-agent"],
               require => Package["zabbix-agent"],
               source  => "puppet:///modules/zabbix/zabbix_agentd.d-intershop/intershop-webserver.conf",
               }
}
