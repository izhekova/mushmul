class role::base {
    include profile::groups::init
    include profile::users::list
    include profile::users::infrastructure
    include profile::users::support
    include profile::sudo::init
    include profile::sudo::infrastructure
    include profile::sudo::zabbix
    include profile::zabbix::default
}
