# should only contain the list of group existing on a server
# PUP-67
class groups {
  @group { 'users':
    ensure => present,
    gid    => 100,
  }

  @group { 'infrastructure':
    ensure => present,
    gid    => 600,
  }

  @group { 'support':
    ensure => present,
    gid    => 601,
  }

  @group { 'intershop':
    ensure => present,
    gid    => 602,
  }

  @group { 'dev':
    ensure => present,
    gid    => 603,
  }

  @group { 'hybrisuat':
    ensure => present,
    gid    => 604,
  }

  @group { 'admin':
    ensure => present,
    gid    => 605,
  }

  @group { 'hybris41':
    ensure => present,
    gid    => 606,
  }

  @group { 'hybris':
    ensure => present,
    gid    => 607,
  }
 
  @group { 'aem':
    ensure => present,
    gid    => 611,
  }

  @group { 'hybrissolr':
    ensure => present,
    gid    => 610,
  }
  
  @group { 'httpd':
    ensure => present,
    gid    => 613,
  }

  @group { 'isgrp1':
    ensure => present,
    gid    => 3200,
  }
  
  @group { 'isgrp2':
    ensure => present,
    gid    => 3203,
  }

  @group { 'oinstall':
    ensure => present,
    gid    => 3204,
  }

  @group { 'dba':
    ensure => present,
    gid    => 3205,
  }
 
}

