class zabbix::mysql {

	file { "/etc/zabbix/bin/mysql-db-discovery.pl":
                ensure  => present,
                mode    => "0750",
                owner   => "root",
                group   => "root",
                notify  => Service["zabbix-agent"],
                require => Package["zabbix-agent"],
                source  => "puppet:///modules/zabbix/bin-mysql/mysql-db-discovery.pl",
                }

  file { "/etc/zabbix/bin/mysql-table-discovery.pl":
                ensure  => present,
                mode    => "0750",
                owner   => "root",
                group   => "root",
                notify  => Service["zabbix-agent"],
                require => Package["zabbix-agent"],
                source  => "puppet:///modules/zabbix/bin-mysql/mysql-table-discovery.pl",
                }

	  file { "/etc/zabbix/zabbix_agentd.d/mysql_table_stats.conf":
                ensure  => present,
                mode    => "0750",
                owner   => "root",
                group   => "root",
                notify  => Service["zabbix-agent"],
                require => Package["zabbix-agent"],
                source  => "puppet:///modules/zabbix/zabbix_agentd.d-mysql/mysql_table_stats.conf",
                }

    file { "/etc/zabbix/zabbix_agentd.d/userparametar_mysql.conf":
                ensure  => present,
                mode    => "0750",
                owner   => "root",
                group   => "root",
                notify  => Service["zabbix-agent"],
                require => Package["zabbix-agent"],
                source  => "puppet:///modules/zabbix/zabbix_agentd.d-mysql/userparameter_mysql.conf",
                }

}
