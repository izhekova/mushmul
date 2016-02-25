class profile::ssh::ssh_hardening {
	class { 'ssh::server':
		storeconfigs_enabled                  => false,
		options		                          => {
            'Port'                            => '22',
            'Protocol'                        => '2',
            'UseprivilegeSeparation'          => 'yes',
            'SyslogFacility'                  => 'AUTH',
            'AllowTcpForwarding'              => 'yes',
            'LoginGraceTime'                  => '120',
            'PermitRootLogin'                 => 'no',
            'X11Forwarding'                   => 'no',
            'PubkeyAuthentication'            => 'yes',
            'AuthorizedKeysFile'              => '%h/.ssh/authorized_keys',
            'HostbasedAuthentication'         => 'no',
            'PermitEmptyPasswords'            => 'no',
            'ChallengeResponseAuthentication' => 'yes',
            'KerberosAuthentication'          => 'no',
            'GSSAPIAuthentication'            => 'no',
            'UsePAM'                          => 'yes',
            'PrintLastLog'                    => 'yes',
            'TCPKeepAlive'                    => 'yes',
            'HostKey'						  => '/etc/ssh/ssh_host_rsa_key',
            'Ciphers'                         => 'chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr',
           	'MACs'                            => 'hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-ripemd160-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,hmac-ripemd160,umac-128@openssh.com',
           	'KexAlgorithms'					  => 'curve25519-sha256@libssh.org,diffie-hellman-group-exchange-sha256',
            'PasswordAuthentication'          => 'yes',
            'AcceptEnv'                       => '',
            'ClientAliveInterval'             => '300',
            'ClientAliveCountMax'			  => '3'
      	    },
      }
	class { 'ssh::client':
		options								  => {
			'Host *'						  => {
	        'SendEnv'						  => 'LANG LC_*',
	        'KexAlgorithms'					  => 'curve25519-sha256@libssh.org,diffie-hellman-group-exchange-sha256',
    	    },
	    }
	}
#	include ssh::moduli
}
