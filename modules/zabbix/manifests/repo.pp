# == Class: zabbix::repo
#
# Adds Zabbix repositories.
#
# === Parameters
#
# [*zabbix_server*]
#   List of comma delimited IP addresses (or hostnames) of Zabbix servers.
#   No spaces allowed. If ServerActive is not specified, the first entry is used
#   for receiving list of and sending active checks.
#   If IPv6 support is enabled then '127.0.0.1', '::127.0.0.1', '::ffff:127.0.0.1' are treated equally.
#
# [*zabbix_server_active*]
#   Comma-separated list of host:port pairs of Zabbix servers for active checks.
#   If ServerActive is specified, first host in the Server option is not used for active checks, only for passive checks.
#   If the port is not specified, ServerPort port is used for that host. If ServerPort is not specified, default port is used.
#   IPv6 addresses must be enclosed in square brackets if port for that host is specified.
#   If port is not specified, square brackets for IPv6 addresses are optional.
#   Example: ServerActive=127.0.0.1:20051,zabbix.domain,[::1]:30051,::1,[12fc::1]
#
# [*version]
#   Specyfic version of package.
#
# [*enable*]
#   Enable service after installation.
#
# [*start*]
#   Start service after installation.
#
#
#
# === Authors
#
# Leszek Charkiewicz <leszek@charkiewicz.net>
#
 class zabbix::repo ($repo_version = $zabbix::params::repo_version) {
  
  case $::operatingsystem {

    /(RedHat|CentOS|Fedora|SLC)/: {
					case $::operatingsystemmajrelease {
						'5': {
								yumrepo { "zabbix":
										descr           => "Zabbix Official Repository -  \$basearch",
										baseurl         => "http://repo.zabbix.com/zabbix/${repo_version}/rhel/5/\$basearch",
										failovermethod  => "priority",
										gpgcheck        => "0",
										enabled         => "1",
										gpgkey          => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-ZABBIX";
								}
						}
						'6': {
								yumrepo { "zabbix":
										descr           => "Zabbix Official Repository -  \$basearch",
										baseurl         => "http://repo.zabbix.com/zabbix/${repo_version}/rhel/6/\$basearch",
										failovermethod  => "priority",
										gpgcheck        => "0",
										enabled         => "1",
										gpgkey		=> "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-ZABBIX";
								}
						}
					}
    }
    /Amazon/: {
      yumrepo { "zabbix":
              descr           => "Zabbix Official Repository -  \$basearch",
              baseurl         => "http://repo.zabbix.com/zabbix/${repo_version}/rhel/6/\$basearch",
              failovermethod  => "priority",
              gpgcheck        => "0",
              enabled         => "1",
              gpgkey      => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-ZABBIX";
              }
       }


    /(Ubuntu|Debian)/: {
        $os_downcase = inline_template('<%= operatingsystem.downcase %>')

     ### The key download is disabled as we currently do not have access to port 11371.
     #      exec { 'add-zabbix-apt-key':
     #    unless  => '/usr/bin/apt-key list |grep zabbix',
     #     command => '/usr/bin/apt-key adv --keyserver keys.gnupg.net --recv-keys D13D58E479EA5ED4',
     #     }

           # file { '/etc/apt/sources.list.d/zabbix.list':
           #    content              => 'deb  http://repo.zabbix.com/zabbix/2.2/ubuntu precise main contrib non-free',
           #    notify        => Exec['zabbix-apt-update'],
           #}
           apt::source { 'zabbix':
           # location = $operatingsystem ? {
           #  debian => 'deb  http://repo.zabbix.com/zabbix/2.2/debian wheezy main contrib non-free',
           #  ubuntu => 'deb  http://repo.zabbix.com/zabbix/2.2/ubuntu precise main contrib non-free',
           #  default       => 'deb  http://repo.zabbix.com/zabbix/2.2/debian wheezy main contrib non-free',
           #}
           location   => "http://repo.zabbix.com/zabbix/${repo_version}/${os_downcase}",
           repos      => 'main contrib non-free',
    #      key        => 'D13D58E479EA5ED4',
    #      key_server => 'keys.gnupg.net',
           }

           exec { 'zabbix-apt-update':
           command     => '/usr/bin/apt-get update',
           require     => [File['/etc/apt/sources.list.d/zabbix.list'], File['/etc/apt/preferences.d/00zabbix.pref']],
           refreshonly => true,
           }

           file { '/etc/apt/preferences.d/00zabbix.pref':
           content => "Package: *\nPin: release o=Zabbix\nPin-Priority: 1001",
           notify  => Exec['zabbix-apt-update'],
           }
 
 
    }
    default: {
      fail("${::operatingsystem} is not supported yet!")
    }

  }
}

