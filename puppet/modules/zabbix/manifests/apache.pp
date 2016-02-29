class zabbix::apache {

#	file { "/usr/share/zabbix/bin/apache-stats.sh":
	file { "/etc/zabbix/bin/apache-stats.sh":
                ensure  => present,
                mode    => "0755",
                owner   => "root",
                group   => "root",
                notify  => Service["zabbix-agent"],
                require => Package["zabbix-agent"],
                source  => "puppet:///modules/zabbix/bin-apache/apache-stats.sh",
                }

	file { "/etc/zabbix/zabbix_agentd.d/apache-stats.conf":
                ensure  => present,
                mode    => "0644",
                owner   => "root",
                group   => "root",
                notify  => Service["zabbix-agent"],
                require => Package["zabbix-agent"],
                source  => "puppet:///modules/zabbix/zabbix_agentd.d-apache/apache-stats.conf",
                }
}
