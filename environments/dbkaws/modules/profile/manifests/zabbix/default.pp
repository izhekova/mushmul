class profile::zabbix::default {
    class { 'zabbix::agent':
        zabbix_type     => 'default',
        repo_version    => '2.4',
        zabbix_server   => '10.28.0.89',
    }
}
