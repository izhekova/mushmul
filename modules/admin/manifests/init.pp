class admin {
  $adminpack = [
    'vim-enhanced',
    'iotop',
    'statgrab-tools',
    'sysstat',
    'iptraf',
    'tcpdump',
    'telnet',
    'screen',
    'scponly',
    'ethtool',
    'bzip2',
    'psmisc',
    'unzip',
    'lsof',
    'traceroute',
    'zip',
    'wget',
    'GeoIP',
    'pv']

  @package { $adminpack:
    ensure  => present,
    require => Yumrepo["epel"],
  }
  realize(Package[$adminpack])

  # notify { "admin package installed": }
}
