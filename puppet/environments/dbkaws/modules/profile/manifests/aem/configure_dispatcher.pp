class profile::aem::configure_dispatcher {
    class { '::aem::dispatcher': 
        dispatcher_lib  =>   'dispatcher-apache2.4-4.1.11.so',
    }
}
