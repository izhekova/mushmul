define users::virtualkey (
  $username = "${title}",
  $type     = 'ssh-rsa',
  $home     = "/home/${username}",
  $key,
) {
#    file { "$home/.ssh":
#     ensure     =>  directory,
#     owner      =>  $username,
#     mode       =>  '0700',
#    }
    ssh_authorized_key { "${title}":
      ensure  => present,
      user    => $username,
      key     => $key,
      type    => $type,
      name    => $title,
   #   require => File["${home}/.ssh"],
    }
  
}