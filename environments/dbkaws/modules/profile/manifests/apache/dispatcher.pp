class profile::apache::dispatcher {
    class { "apache": 
        source_dir => false,
        package => 'httpd24',
        package_modssl  => 'mod24_ssl',
    }
}
