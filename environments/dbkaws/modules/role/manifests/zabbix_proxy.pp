class role::zabbix_proxy {  
    include profile::groups::init
    include profile::users::list
    include profile::users::infrastructure
    include profile::sudo::init
    include profile::sudo::infrastructure
    include profile::sudo::zabbix
    include profile::zabbix::proxy
#    include profile::zabbix::default
}
