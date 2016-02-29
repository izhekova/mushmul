class zabbix::default ($zabbix_server, $listen_port) {
  include zabbix::params

  package { "zabbix":
    ensure  => latest,
    require => Yumrepo["zabbix"],
  }

  package { "zabbix-agent":
    ensure  => latest,
    require => Yumrepo["zabbix"],
  }

  service { "zabbix-agent":
    enable  => true,
    ensure  => running,
    require => Package["zabbix-agent"],
  }

  file { "/etc/zabbix/zabbix_agentd.conf":
    ensure  => file,
    content => template('zabbix/zabbix_agentd.conf.erb'),
    notify  => Service["zabbix-agent"],
    require => Package["zabbix-agent"],
  }

  file { "/etc/zabbix/bin":
    ensure  => directory,
    mode    => "0755",
    owner   => "root",
    group   => "root",
    recurse => true,
    purge   => true,
    notify  => Service["zabbix-agent"],
    require => Package["zabbix-agent"],
    source  => "puppet:///modules/zabbix/bin-default",
  }

  file { "/etc/zabbix/zabbix_agentd.d":
    ensure  => directory,
    mode    => "0755",
    owner   => "root",
    group   => "root",
    recurse => true,
    purge   => true,
    notify  => Service["zabbix-agent"],
    require => Package["zabbix-agent"],
    source  => "puppet:///modules/zabbix/zabbix_agentd.d-default",
  }
  
  file { "/usr/share/zabbix":
    ensure  => directory,
    mode    => "0755",
    owner   => "root",
    group   => "root",
  }
  
    file { "/usr/share/zabbix/bin":
    ensure  => directory,
    mode    => "0755",
    owner   => "root",
    group   => "root",
    recurse => true,
    purge   => true,
    notify  => Service["zabbix-agent"],
    require => Package["zabbix-agent"],
    source  => "puppet:///modules/zabbix/bin-all", 
  }
}
