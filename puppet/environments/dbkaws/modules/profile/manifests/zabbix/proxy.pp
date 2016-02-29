class profile::zabbix::proxy {
    class { '::zabbix::proxy':
        zabbix_server   =>  '10.10.0.19',
        repo_version => '2.4',
        db_type => 'sqlite3',
    }            
}
