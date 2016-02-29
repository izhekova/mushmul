class sudo::sudohybris {
  include sudo
    sudo::conf { 'hybris':
    priority => 10,
    content  => 'hybris  ALL=(root)NOPASSWD: /etc/init.d/httpd start, /etc/init.d/httpd stop, /etc/init.d/httpd restart, /usr/bin/unzip' ,
  }
}