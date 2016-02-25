class ssh::moduli inherits ssh::params {
  exec { 'Generate moduli file':
    path			=> [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ],
    command		=> "ssh-keygen -G $sshd_dir/super-moduli -b 4096 && yes |cp -f $sshd_dir/super-moduli $sshd_dir/moduli",
    onlyif		=> "/usr/bin/test ! -f $sshd_dir/super-moduli",
		timeout		=> 3600,
  }
}
 