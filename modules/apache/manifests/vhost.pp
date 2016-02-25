
# = Define: apache::vhost
#
# This class manages Apache Virtual Hosts configuration files
#
# == Parameters:
# [*port*]
#   The port to configure the host on

# [*ip_addr*]
#   The ip to configure the host on. Default: * (all IPs)
#
# [*docroot*]
#   The VirtualHost DocumentRoot
#
# [*docroot_create*]
#   If the specified directory has to be created. Default: false
#
# [*ssl*]
#   Set to true to enable SSL for this Virtual Host
#
# [*template*]
#   Specify a custom template to use instead of the default one
#   The value will be used in content => template($template)
#
# [*source*]
#   Source file for vhost. Alternative to template.
#   Note that if you decide to source a static file most of the other
#   parameters of this define won't be used.
#   Note also that if you set a source file, you've to explicitly set
#   the template parameter to undef.
#
# [*priority*]
#   The priority of the VirtualHost, lower values are evaluated first
#   Set to '' to edit default apache value
#
# [*serveraliases*]
#   An optional list of space separated ServerAliases
#
# [*env_variables*]
#   An optional list of space separated environment variables (e.g ['APP_ENV dev'])
#
# [*server_admin*]
#   Server admin email address
#
# [*server_name*]
#   An optional way to directly set server name
#   False mean, that servername is not present in generated config file
#
# [*passenger*]
#   If Passenger should be enabled
#
# [*passenger_high_performance*]
#   Set the PassengerHighPerformance directive
#
# [*passenger_pool_max_pool_size*]
#   Set the PassengerMaxPoolSize directive
#
# [*passenger_pool_idle_time*]
#   Set the PassengerPoolIdleTime directive
#
# [*passenger_max_requests*]
#   Set the PassengerMaxRequests directive
#
# [*passenger_stat_throttle_rate*]
#   Set the PassengerStatThrottleRate directive
#
# [*passenger_rack_auto_detect*]
#   Set the RackAutoDetect directive
#
# [*passenger_rails_auto_detect*]
#   Set the RailsAutoDetect directive
#
# [*passenger_rails_env*]
#   Set the RailsEnv directive
#
# [*passenger_rails_base_uri*]
#   Set the RackBaseURI directive
#
# [*passenger_rack_env*]
#   Set the RackEnv directive
#
# [*passenger_rack_base_uri*]
#   Set the RackBaseURI directive
#
# [*directory*]
#   Set the VHost directory used for the <Directory> directive
#
# [*directory_options*]
#   Set the directory's Options
#
# [*directory_allow_override*]
#   Set the directory's override configuration
#
# [*directory_require*]
#   Set the Require attribute for Apache 2.4
#
# [*aliases*]
#   Set one or more Alias directives (e.g '/phpmyadmin /usr/share/phpMyAdmin'
#   or ['/alias1 /path/to/alias', '/alias2 /path/to/secondalias'])
#
# == Examples:
#  apache::vhost { 'site.name.fqdn':
#    docroot  => '/path/to/docroot',
#  }
#
#  apache::vhost { 'mysite':
#    docroot  => '/path/to/docroot',
#    template => 'myproject/apache/mysite.conf',
#  }
#
#  apache::vhost { 'my.other.site':
#    docroot                    => '/path/to/docroot',
#    directory                  => '/path/to',
#    directory_allow_override   => 'All',
#  }
#
#  apache::vhost { 'sitewithalias':
#    docroot                    => '/path/to/docroot',
#    aliases                    => '/phpmyadmin /usr/share/phpMyAdmin',
#  }
#
define apache::vhost (
  $server_admin                 = '',
  $server_name                  = '',
  $config_name                  = '',
  $docroot                      = '',
  $docroot_create               = false,
  $docroot_owner                = 'root',
  $docroot_group                = 'root',
  $port                         = '80',
  $ip_addr                      = '*',
  $ssl                          = false,
  $template                     = 'apache/virtualhost/vhost.conf.erb',
  $source                       = '',
  $priority                     = '50',
  $serveraliases                = '',
  $env_variables                = '',
  $passenger                    = false,
  $passenger_high_performance   = true,
  $passenger_max_pool_size      = 12,
  $passenger_pool_idle_time     = 1200,
  $passenger_max_requests       = 0,
  $passenger_stat_throttle_rate = 30,
  $passenger_rack_auto_detect   = true,
  $passenger_rails_auto_detect  = false,
  $passenger_rails_env          = '',
  $passenger_rails_base_uri     = '',
  $passenger_rack_env           = '',
  $passenger_rack_base_uri      = '',
  $enable                       = true,
  $directory                    = '',
  $directory_options            = '',
  $directory_allow_override     = 'None',
  $directory_order              = '',
  $directory_allow              = '',
  $directory_require            = '',
  $aliases                      = '',
  $rewrite_engine               = '',
  $rewrite_options              = '',
  $modules_dir                  = $::apache::params::modules_dir,
  $modules_dir_config           = $::apache::params::modules_dir_config,
  $config_file_jk               = $::apache::params::config_file_jk,
  $include_jk                   = $::apache::params::include_jk,
  $rewrite_rules                = $::apache::params::rewrite_rules,
  $rewrite_rules_dir            = $::apache::params::rewrite_rules_dir,
  $rewrite_rules_source         = $::apache::params::rewrite_rules_source,
  $ssl_cert                     = $::apache::params::ssl_cert,
  $ssl_key                      = $::apache::params::ssl_key,
  $ssl_dir                      = $::apache::params::ssl_dir,
#  $ssl_conf_file                = $::apache::params::ssl_conf_file,
#  $ssl_conf_file_source         = $::apache::params::ssl_conf_file_source,
  $source_ssl_dir               = $::apache::params::source_ssl_dir,
  $jk_workers_file              = '',
  $jk_log_file                  = '',
  $jk_log_level                  = '',        
  $jk_log_stamp_format          = '',
) {

  $ensure = $enable ? {
        true => present,
        false => present,
        absent => absent,
  }
  $bool_docroot_create               = any2bool($docroot_create)
  $bool_passenger                    = any2bool($passenger)
  $bool_passenger_high_performance   = any2bool($passenger_high_performance)
  $bool_passenger_rack_auto_detect   = any2bool($passenger_rack_auto_detect)
  $bool_passenger_rails_auto_detect  = any2bool($passenger_rails_auto_detect)
  
  $real_docroot = $docroot ? {
    ''      => "${::apache::data_dir}/${name}",
    default => $docroot,
  }

  $real_directory = $directory ? {
    ''      => $::apache::data_dir,
    default => $directory,
  }

  $server_name_value = $server_name ? {
    ''      => $name,
    default => $server_name,
  }
  
  $config_name_value = $server_name ? {
    ''      => $config_name,
    default => $server_name,
  }
  
  $manage_file_source = $source ? {
    ''      => undef,
    default => $source,
  }

  # Server admin email
  if $server_admin != '' {
    $server_admin_email = $server_admin
  } elsif ($name != 'default') and ($name != 'default-ssl') {
    $server_admin_email = "webmaster@${name}"
  } else {
    $server_admin_email = 'webmaster@localhost'
  }

  # Config file path
#  if $priority != '' {
#    $config_file_path = "${apache::vdir}/${name}.conf"
#  } elsif ($name != 'default') and ($name != 'default-ssl') {
#    $config_file_path = "${apache::vdir}/${name}.conf"
#  } else {
#    $config_file_path = "${apache::vdir}/${config_name}"
#  }

  if $config_name != '' {
    $config_file_path = "${apache::vdir}/${config_name}.conf"
  } elsif ($name != 'default') and ($name != 'default-ssl') {
    $config_file_path = "${apache::vdir}/${name}.conf"
  } else {
    $config_file_path = "${apache::vdir}/${name}"
  }

  # Config file enable path
  if $priority != '' {
    $config_file_enable_path = "${apache::config_dir}/sites-enabled/${priority}-${name}.conf"
  } elsif ($name != 'default') and ($name != 'default-ssl') {
    $config_file_enable_path = "${apache::config_dir}/sites-enabled/${name}.conf"
  } else {
    $config_file_enable_path = "${apache::config_dir}/sites-enabled/000-${name}"
  }

  $manage_file_content = $template ? {
    ''      => undef,
    undef   => undef,
    default => template($template),
  }

  include apache

  file { $config_file_path:
    ensure  => $ensure,
    source  => $manage_file_source,
    content => $manage_file_content,
    mode    => $apache::config_file_mode,
    owner   => $apache::config_file_owner,
    group   => $apache::config_file_group,
    require => Package['apache'],
#    notify  => $apache::manage_service_autorestart,
  }

  # Some OS specific settings:
  # On Debian/Ubuntu manages sites-enabled
  case $::operatingsystem {
    ubuntu,debian,mint: {
      $file_vhost_link_ensure = $enable ? {
        true    => $config_file_path,
        false   => absent,
        absent  => absent,
      }
      file { "ApacheVHostEnabled_${name}":
        ensure  => $file_vhost_link_ensure,
        path    => $config_file_enable_path,
        require => Package['apache'],
#        notify  => $apache::manage_service_autorestart,
      }
    }
#    redhat,centos,scientific,fedora: {
#      include apache::redhat
#    }
    default: { }
  }

  if $bool_docroot_create == true {
    file { $real_docroot:
      ensure  => directory,
      owner   => $docroot_owner,
      group   => $docroot_group,
      mode    => '0775',
      require => Package['apache'],
    }
  }

  if $bool_passenger == true {
    include apache::passenger
  }
}