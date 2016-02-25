# This will create a set of instances, load balancers and security groups in the
# specified AWS region.

Ec2_securitygroup {
	region => 'eu-west-1',
}

Ec2_instance {
	region            => 'eu-west-1',
	availability_zone => 'eu-west-1a',
}

ec2_vpc { 'dbkeuwtestvpc-irenaz':
	ensure		=> 'present',
	name		=> 'dbkeuwtestvpc-irenaz',
    region		=> 'eu-west-1',
	cidr_block	=> '10.134.0.0/16',
}

ec2_securitygroup { 'ec2euwtest-sg':
        name            => 'ec2euwtest-sg',
        ensure          => 'present',
        description     => 'Security group for CERES test environment',
        vpc             => 'dbkeuwtestvpc-irenaz',
        ingress         => [
        {
        security_group => 'ec2euwtest-sg'
        },
                {
                protocol => 'tcp',
                port     => 22,
                cidr     => '0.0.0.0/0'
                },{
                protocol => 'tcp',
                port     => 80,
                cidr     => '0.0.0.0/0'
                },
        ],
        tags    => {
                name    => 'ec2euwtest-sg',
        }
}

ec2_vpc_subnet { 'dbkeuwtestvpc-subnet-irenaz':
	ensure            => 'present',
	region            => 'eu-west-1',
	vpc               => 'dbkeuwtestvpc-irenaz',
	cidr_block        => '10.134.4.0/24',
	availability_zone => 'eu-west-1a',
	route_table       => 'sample-routes',
}

ec2_vpc_internet_gateway { 'sample-igw':
	ensure => 'present',
	region => 'eu-west-1',
	vpc    => 'dbkeuwtestvpc-irenaz',
}

ec2_vpc_routetable { 'sample-routes':
	ensure => 'present',
	region => 'eu-west-1',
	vpc    => 'dbkeuwtestvpc-irenaz',
	routes => [
	{
		destination_cidr_block => '10.134.0.0/16',
		gateway                => 'local'
	},{
		destination_cidr_block => '0.0.0.0/0',
		gateway                => 'sample-igw'
	},
  	],
}

ec2_instance { 'dbkeuwtest-docker':
	ensure          => 'present',
	key_name	=> 'aws-irenaz',
	image_id        => 'ami-d2a00ea1',
	security_groups => ['ec2euwtest-sg'],
        subnet          => 'dbkeuwtestvpc-subnet-irenaz',
	instance_type   => 't2.micro',
	monitoring      => 'false',
	associate_public_ip_address => 'false',
	tags            => {
		name	   => 'DBKeuwTest-Docker',
		department => 'infrastructure',
		project    => 'CERES',
		created_by => $::id,
	},
	user_data	=> template('aws/file-path.sh.erb'),
}

