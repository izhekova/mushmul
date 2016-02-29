# This will create a set of instances, load balancers and security groups in the
# specified AWS region.

Ec2_securitygroup {
	region => 'eu-west-1',
}

Ec2_instance {
	region            => 'eu-west-1',
	availability_zone => 'eu-west-1a',
}

ec2_instance { 'DBKeuwTest-Docker02':
	ensure          => 'present',
	key_name	=> 'aws-irenaz',
	image_id        => 'ami-e31bab90',
	instance_type   => 't2.micro',
	monitoring      => 'false',
	security_groups	=> 'launch-wizard-3',
	subnet		=> 'DBKeuw1aTestSubnet-AdminTest',
	associate_public_ip_address => 'false',
	tags            => {
		department => 'infrastructure',
		project    => 'CERES',
	},
	user_data	=> template('aws/file-path.sh.erb'),
}

