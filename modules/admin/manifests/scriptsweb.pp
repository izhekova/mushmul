class admin::scriptsweb {
  file { "/usr/local/sbin":
    ensure  => directory,
    mode    => "0755",
    owner   => "root",
    group   => "root",
    recurse => true,
    purge   => true,
    source  => "puppet:///modules/admin/scripts-web",
  }
}