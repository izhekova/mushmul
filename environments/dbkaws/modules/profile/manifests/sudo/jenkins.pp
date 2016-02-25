class profile::sudo::jenkins {
    sudo::conf { 'jenkins':
        priority         => 40,
        content          => 'jenkins ALL=(root) NOPASSWD: /bin/cp * /etc/httpd/*, /sbin/service httpd *'
    }
}
