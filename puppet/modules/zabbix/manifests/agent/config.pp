# == Class: zabbix::agent::config
#
class zabbix::agent::config {
  include zabbix::params
  $source_ip            = $zabbix::agent::source_ip
  $zabbix_server_active = $zabbix::agent::zabbix_server_active
  $host_metadata        = $zabbix::agent::host_metadata
  $host_metadata_item   = $zabbix::agent::host_metadata_item
  $agent_alias          = $zabbix::agent::agent_alias
  $zabbix_type          = $zabbix::agent::zabbix_type
  $zabbix_server			  = $zabbix::agent::zabbix_server
	$listen_port					= $zabbix::agent::listen_port
  
  file { $zabbix::params::agent_config_file:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template($zabbix::params::agent_config_template),
  }

		case $zabbix_type {
            'apache':   {
                    $source_conf = ['puppet:///modules/zabbix/zabbix_agentd.d-default','puppet:///modules/zabbix/zabbix_agentd.d-apache']
                    $source_bin = ['puppet:///modules/zabbix/bin-default','puppet:///modules/zabbix/bin-apache']
                    }
            'mysql':  {
                    $source_conf = ['puppet:///modules/zabbix/zabbix_agentd.d-default','puppet:///modules/zabbix/zabbix_agentd.d-mysql']
                    $source_bin = ['puppet:///modules/zabbix/bin-default','puppet:///modules/zabbix/bin-mysql']
                    }
            'intershop_app':   {
                    $source_conf = ['puppet:///modules/zabbix/zabbix_agentd.d-default','puppet:///modules/zabbix/zabbix_agentd.d-intershop-app'] 
                    $source_bin = 'puppet:///modules/zabbix/bin-default'
                    }
            'intershop_web':  {
                    $source_conf = ['puppet:///modules/zabbix/zabbix_agentd.d-default','puppet:///modules/zabbix/zabbix_agentd.d-intershop-web','puppet:///modules/zabbix/zabbix_agentd.d-apache']
                    $source_bin = ['puppet:///modules/zabbix/bin-default','puppet:///modules/zabbix/bin-apache']
                    }                    
            'intershop_webmaj':  {
                    $source_conf = ['puppet:///modules/zabbix/zabbix_agentd.d-default','puppet:///modules/zabbix/zabbix_agentd.d-intershop-maj']
                    $source_bin = 'puppet:///modules/zabbix/bin-default'
                    }    
            'haproxy':  {
                    $source_conf = ['puppet:///modules/zabbix/zabbix_agentd.d-default','puppet:///modules/zabbix/zabbix_agentd.d-haproxy']
                    $source_bin = ['puppet:///modules/zabbix/bin-default','puppet:///modules/zabbix/bin-haproxy']
                    }                   
            default:    {
                    $source_conf = 'puppet:///modules/zabbix/zabbix_agentd.d-default'
                    $source_bin = 'puppet:///modules/zabbix/bin-default'
                    }
                }
                
  file { '/etc/zabbix/zabbix_agentd.d':
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    recurse => true,
    purge => true,
    source => $source_conf,
    sourceselect => all,
  }

  file { '/etc/zabbix/bin':
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    recurse => true,
    purge => true,
    source => $source_bin,
    sourceselect => all,
  }
}