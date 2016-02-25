# == Class: zabbix::proxy::config
#
class zabbix::proxy::config {
  $proxy_config_file = $zabbix::params::proxy20_config_file
  $source_ip        = $zabbix::proxy::source_ip
  $db_schema        = $zabbix::proxy::db_schema
  $db_password      = $zabbix::proxy::db_password
  $ssh_key_location = $zabbix::proxy::ssh_key_location
  $include          = $zabbix::proxy::include


  if $zabbix::proxy::db_type == 'sqlite3' {
#    if  $zabbix::proxy::db_name == 'zabbix' {
      file { '/var/lib/zabbix':
        ensure  => directory,
        owner   => 'zabbix',
        group   => 'zabbix',
        mode    => '0750',
       }
        $db_name = $zabbix::params::proxy_db_name_sqlite3
#    }
  }

  # I know it could be much simpler, but this is only for Red Hat family
#  if $::operatingsystem =~ /(RedHat|Amazon|CentOS|Fedora|SLC)/ {
#    if $zabbix::proxy::is_20_version {
#      $proxy_config_file = $zabbix::params::proxy20_config_file
#      $proxy_config_template = $zabbix::params::proxy20_config_template
#      $agentd_config_file = $zabbix::params::agentd20_config_file
#      $external_scripts = $zabbix::params::20external_scripts

      # file { $agentd_config_file:
      #   ensure  => present,
      #   owner   => 'root',
      #   group   => 'root',
      #   mode    => '0644',
      #   content => template($zabbix::params::agentd_config_template),
      # }
#    }
#    else {
#      $proxy_config_file = $zabbix::params::proxy_config_file
#      $proxy_config_template = $zabbix::params::proxy_config_template
#      $external_scripts = $zabbix::params::external_scripts
#    }
#  }
#  else {
#    $proxy_config_file = $zabbix::params::proxy_config_file
#    $proxy_config_template = $zabbix::params::proxy_config_template
#    $external_scripts = $zabbix::params::external_scripts
#  }


    file { $zabbix::params::proxy_include:
      ensure  => directory,
      owner   => 'zabbix',
      group   => 'zabbix',
      mode    => '0750',
    } ->

  file { $zabbix::params::proxy_config_file:
    ensure  => present,
    owner   => 'zabbix',
    group   => 'zabbix',
    mode    => '0640',
    content => template($zabbix::params::proxy_config_template),
  }


}
