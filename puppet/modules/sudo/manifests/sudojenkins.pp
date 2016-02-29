class sudo::sudojenkins {
  include sudo
    sudo::conf { 'jenkins':
    priority => 10,
    content  => 'jenkins         ALL=(ALL) NOPASSWD: /bin/mkdir, /bin/chown, /bin/chmod, /bin/cp, /bin/mv, /bin/rm, /sbin/service httpd *, /etc/init.d/httpd *, /usr/bin/ant, /usr/bin/svn, /home/hybris/hybris/bin/platform/hybrisserver.sh',
  }
}