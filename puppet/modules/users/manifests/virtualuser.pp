define users::virtualuser (
  $uid,
  $gid       = "${title}",
  $gidnum    = "${uid}",
  $home      = "/home/${title}",
  $shell     = '/bin/bash',
  $managedir = true,
  $realname,
  $groups    = [],
  $username  = "${title}",
  $sshdir    = true,) {
  user { $title:
    ensure     => present,
    uid        => $uid,
    gid        => $gid,
    shell      => $shell,
    home       => $home,
    comment    => $realname,
    managehome => $managedir,
    require    => Group[[$gid, $groups]],
    groups     => $groups,
  }

  if $sshdir == true {
    file { "${home}/.ssh":
      ensure => directory,
      owner  => $username,
      mode   => '0700',
    }
  }# else {
   # notify { "no ${home}/.ssh for ${title}": }
  #}
}
