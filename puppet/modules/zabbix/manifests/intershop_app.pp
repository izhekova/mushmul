class zabbix::intershop_app inherits zabbix::default {

  $listen_port = '10150'

  File['/etc/zabbix/zabbix_agentd.conf'] {
    content  =>  template('zabbix/zabbix_agentd.conf.app.erb'),
    notify  => Service["zabbix-agent"],
    require => Package["zabbix-agent"],
  }
  
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
