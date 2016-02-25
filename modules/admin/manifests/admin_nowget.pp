class admin::admin_nowget {
  $adminpack = [
    'vim-enhanced',
    'iotop',
    'statgrab-tools',
    'sysstat',
    'iptraf',
    'tcpdump',
    'telnet',
    'screen',
    'ethtool',
    'bzip2',
    'psmisc',
    'unzip',
    'lsof',
    'traceroute',
    'zip',
    'GeoIP']

  @package { $adminpack:
    ensure  => present,
    require => Yumrepo["epel"],
  }
  realize(Package[$adminpack])

#  notify { "admin package installed": }

}
