class profile::sudo::aem {
    sudo::conf { 'aem':
        priority         => 40,
        content          => 'aem ALL=(root) NOPASSWD: /etc/init.d/aem* start, /etc/init.d/aem* stop, /etc/init.d/aem* restart, /etc/init.d/aem* status, /etc/init.d/puppet *'
    }
}
