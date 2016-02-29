# This will create a set of instances, load balancers and security groups in the
# specified AWS region.

Ec2_securitygroup {
	region => 'eu-west-1',
}

Ec2_instance {
	region            => 'eu-west-1',
	availability_zone => 'eu-west-1a',
}

ec2_instance { 'DBKeuwTest-Author':
	ensure          => 'present',
	key_name    	=> 'aws-irenaz',
	image_id        => 'ami-bff32ccc',
	instance_type   => 't2.medium',
	monitoring      => 'false',
	security_groups	=> 'DBKeuwAEMSecGroup-Author',
	subnet		=> 'DBKeuw1aAEMSubnet-AEMAuthor',
	associate_public_ip_address => 'false',
	tags            => {
        role       => 'AEM Author',
		department => 'infrastructure',
		project    => 'CERES',
	},
	user_data	=> template('aws/puppet_setup.sh.erb'),
}

ec2_instance { 'DBKeuwTest-Publish':
    ensure          => 'present',
    key_name        => 'aws-irenaz',
    image_id        => 'ami-bff32ccc',
    instance_type   => 't2.small',
    monitoring      => 'false',
    security_groups => 'DBKeuwAEMSecGroup-Publish',
    subnet      => 'DBKeuw1aAEMSubnet-AEMPublish',
    associate_public_ip_address => 'false',
    tags            => {
        role       => 'AEM Publish',
        department => 'infrastructure',
        project    => 'CERES',
    },
    user_data   => template('aws/puppet_setup.sh.erb'),
}

ec2_instance { 'DBKeuwTest-Standby':
    ensure          => 'present',
    key_name        => 'aws-irenaz',
    image_id        => 'ami-bff32ccc',
    instance_type   => 't2.medium',
    monitoring      => 'false',
    security_groups => 'DBKeuwAEMSecGroup-Standby',
    subnet      => 'DBKeuw1aAEMSubnet-AEMStandBy',
    associate_public_ip_address => 'false',
    tags            => {
        role       => 'AEM Cold Standby',
        department => 'infrastructure',
        project    => 'CERES',
    },
    user_data   => template('aws/puppet_setup.sh.erb'),
}

ec2_instance { 'DBKeuwTest-Dispatcher':
    ensure          => 'present',
    key_name        => 'aws-irenaz',
    image_id        => 'ami-bff32ccc',
    instance_type   => 't2.micro',
    monitoring      => 'false',
    security_groups => 'DBKeuwAEMSecGroup-Dispatcher',
    subnet      => 'DBKeuw1aAEMSubnet-AEMDispatcher',
    associate_public_ip_address => 'false',
    tags            => {
        role       => 'AEM Dispatcher',
        department => 'infrastructure',
        project    => 'CERES',
    },
    user_data   => template('aws/puppet_setup.sh.erb'),
}
