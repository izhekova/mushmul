#  $uid,$groupid,$homedir,$shell,$realname,$groups,$managehome
#  PUP-38
class users::userdb {
  # ## Infrastructure ###
  @users::virtualuser { 'flauret':
    uid      => 10001,
    gid      => 'infrastructure',
    realname => 'Frederic Lauret',
  }

  @users::virtualuser { 'irenaz':
    uid      => 10002,
    gid      => 'infrastructure',
    realname => 'Irena Zhekova',
  }

  @users::virtualuser { 'daniely':
    uid      => 10003,
    gid      => 'infrastructure',
    realname => 'Daniel Yosifov',
  }

  @users::virtualuser { 'radostinad':
    uid      => 10004,
    gid      => 'infrastructure',
    realname => 'Radostina Dimova',
  }

  @users::virtualuser { 'nikolai':
    uid      => 10005,
    gid      => 'infrastructure',
    realname => 'Nikola Ivanov',
  }

  @users::virtualuser { 'davidm':
    uid      => 10006,
    gid      => 'infrastructure',
    realname => 'David Malka',
  }


  # ## Software ###

  @users::virtualuser { 'isas1':
    uid       => 3200,
    groups    => ['oinstall', 'dba', 'isgrp1'],
    realname  => 'Intershop Application Server',
    gid       => 'isgrp1',
    home      => '/opt/intershop/eserver1',
    managedir => true,
    sshdir    => false,
  }

  @users::virtualuser { 'iswa1':
    uid       => 3201,
    realname  => 'Intersop Web Application',
    gid       => 'isgrp1',
    home      => '/opt/intershop/eserver1',
    managedir => false,
    sshdir    => false,
  }

  @users::virtualuser { 'isas2':
    uid      => 3203,
    groups   => ['oinstall', 'dba', 'isgrp2', 'isgrp1'],
    realname => 'Intershop Application Server',
    gid      => 'isgrp2',
    home     => '/opt/intershop/eserver2',
    sshdir   => false,
  }

  @users::virtualuser { 'iswa2':
    uid       => 3204,
    realname  => 'Intersop Web Application',
    gid       => 'isgrp2',
    home      => '/opt/intershop/eserver2',
    managedir => false,
  }

  @users::virtualuser { 'oracle':
    uid      => 3205,
    groups   => ['oinstall', 'dba'],
    realname => 'oracle by puppet',
    gid      => 'oinstall',
    home     => '/opt/oracle',
  }

  @users::virtualuser { 'awfetch':
    uid      => 3209,
    #   groups   => ['isgrp1', 'isgrp2'],
    gid      => 'isgrp2',
    realname => 'AWFetch',
  }

  @users::virtualuser { 'services_manager_web':
    uid      => 3215,
    realname => 'Services Manager',
    gid      => 'users',
  }

  @users::virtualuser { 'services_manager_app':
    uid      => 3216,
    realname => 'Services Manager',
    gid      => 'users',
  }

  # ## Hybris Software ###
  @users::virtualuser { 'omsftp':
    uid      => 11001,
    realname => 'OMS SFTP User',
    gid      => 'omsftp',
  }

  @users::virtualuser { 'hybris41':
    uid      => 603,
    #      groups          => ['oinstall', 'dba', 'isgrp1'],
    realname => 'Hybris Software',
    gid      => 'hybris41',
  }

  @users::virtualuser { 'hybrisuat':
    uid      => 604,
    realname => 'Hybris UAT',
    gid      => 'hybrisuat',
  }

  @users::virtualuser { 'admin':
    uid      => 605,
    realname => 'Admin user',
    gid      => 'admin',
  }

  @users::virtualuser { 'hybris':
    uid      => 607,
    realname => 'Hybris Software',
    gid      => 'hybris'
  }

  @users::virtualuser { 'hybrissolr':
    uid      => 610,
    realname => 'Hybris Solr Software',
    gid      => 'hybrissolr'
  }

  @users::virtualuser { 'aem':
    uid      => 611,
    realname => 'AEM user',
    gid      => 'aem',
    home     => '/opt/aem',
    sshdir   => false,
  }

	## Jenkins Lakeland ##
  @users::virtualuser { 'jenkins':
    uid      => 612,
    gid      => 'support',
    realname => 'Jenkins User',
  }	
	
	@users::virtualuser { 'httpd':
    uid      => 613,
    gid      => 'httpd',
    realname => 'Apache User',
		shell => '/bin/false',
    managedir => false,
    sshdir   => false,
  }	
	
  # ## DBK Support ###
  @users::virtualuser { 'stojanp':
    uid      => 10101,
    gid      => 'support',
    realname => 'Stojan Petrovski',
  }

  @users::virtualuser { 'desislavg':
    uid      => 10102,
    gid      => 'support',
    realname => 'Desislav Georgiev',
  }

  @users::virtualuser { 'tsvetomiri':
    uid      => 10103,
    gid      => 'support',
    realname => 'Tsvetomir Ivanov',
  }

  @users::virtualuser { 'ivanu':
    uid      => 10104,
    gid      => 'support',
    realname => 'Ivan Uzunov',
  }

  # ## Lakeland Support
  @users::virtualuser { 'kaloyanp':
    uid      => 10110,
    gid      => 'support',
    realname => 'Kaloyan Petrov',
  }

  @users::virtualuser { 'rostislavt':
    uid      => 10111,
    gid      => 'support',
    realname => 'Rostislav Torozov',
  }

  @users::virtualuser { 'nikolab':
    uid      => 10112,
    gid      => 'support',
    realname => 'Nikola Boyadzhiev',
  }

  # ## Developers ###
  @users::virtualuser { 'antont':
    uid      => 10201,
    gid      => 'dev',
    realname => 'Anton Tonchev',
  }

  @users::virtualuser { 'marianp': # USERS WITHOUT PUBLIC KEYS IN
                                   # https://confluence.javelingroup.com/pages/viewpage.action?pageId=30933358
    uid      => 10202,
    gid      => 'dev',
    realname => 'Marian Petrov',
  }

  @users::virtualuser { 'jareda':
    uid      => 10203,
    gid      => 'dev',
    realname => 'Jared Anderson',
  }

  @users::virtualuser { 'reubenc':
    uid      => 10204,
    gid      => 'dev',
    realname => 'Reuben Cullen',
  }

  @users::virtualuser { 'dariol':
    uid      => 10205,
    gid      => 'dev',
    realname => 'Dario Liberman',
  }

  @users::virtualuser { 'denysp':
    uid      => 10206,
    gid      => 'dev',
    realname => 'Denys Pavlov',
  }

  @users::virtualuser { 'rayd':
    uid      => 10207,
    gid      => 'dev',
    realname => 'Ray Dysart',
  }

  @users::virtualuser { 'lizaa':
    uid      => 10208,
    gid      => 'dev',
    realname => 'Liza Aman',
  }

  @users::virtualuser { 'alexanderk':
    uid      => 10209,
    gid      => 'dev',
    realname => 'Alexander Krastev',
  }

  @users::virtualuser { 'tomislavp':
    uid      => 10210,
    gid      => 'dev',
    realname => 'Tomislav Pasalic',
  }

  @users::virtualuser { 'marekk':
    uid      => 10211,
    gid      => 'dev',
    realname => 'Marek Kaszewski',
  }

  @users::virtualuser { 'yavort':
    uid      => 10212,
    gid      => 'dev',
    realname => 'Yavor Tsanov',
  }

  @users::virtualuser { 'liliam':
    uid      => 10213,
    gid      => 'dev',
    realname => 'Lilia Milanova',
  }

  @users::virtualuser { 'vassilv':
    uid      => 10214,
    gid      => 'dev',
    realname => 'Vassil Vassilev',
  }

  @users::virtualuser { 'nikolayv':
    uid      => 10215,
    gid      => 'dev',
    realname => 'Nikolay Vakarelski',
  }

  @users::virtualuser { 'nikolayn':
    uid      => 10217,
    gid      => 'dev',
    realname => 'Nikolay Nikolov',
  }

  @users::virtualuser { 'blagovestb':
    uid      => 10218,
    gid      => 'dev',
    realname => 'Blagovest Bashev',
  }

  @users::virtualuser { 'borislavb':
    uid      => 10219,
    gid      => 'dev',
    realname => 'Borislav Bashev',
  }

  @users::virtualuser { 'martint':
    uid      => 10220,
    gid      => 'dev',
    realname => 'Martin Tzvetkov',
  }

  @users::virtualuser { 'ivant':
    uid      => 10224,
    gid      => 'dev',
    realname => 'Ivan Tolev',
  }

  @users::virtualuser { 'adamc':
    uid      => 10225,
    gid      => 'dev',
    realname => 'Adam Carden',
  }

  # ##   LAKELAND DEVS   ###

  @users::virtualuser { 'danield':
    uid      => 10222,
    gid      => 'dev',
    realname => 'Daniel Dinev',
  }

  # ##   LAKELAND DEVS   ###

  # ##   LAKELAND QA   ###

  @users::virtualuser { 'tihomirk':
    uid      => 10228,
    gid      => 'dev',
    realname => 'Tihomir Kanev',
  }
  @users::virtualuser { 'filkab':
    uid      => 10237,
    gid      => 'dev',
    realname => 'Filka Barbutova',
  }
  # ##   LAKELAND DEV  ###

  # ##   LAKELAND SFTP USERS  ###

  @users::virtualuser { 'llcontent':
    uid      => 10238,
    gid      => 'scponly',
    home		 => '/var/ftp/llcontent',
    shell      => '/usr/bin/scponly',
    realname => 'Lakeland SFTP user',
    sshdir    => false,
    
  }

  @users::virtualuser { 'mnpupload':
    uid      => 10239,
    gid      => 'scponly',
    home		 => '/var/ftp/mnpupload',
    shell      => '/usr/bin/scponly',
    realname => 'MNP SFTP user',
    sshdir    => false,
    
  }

  @users::virtualuser { 'radkol':
    uid      => 10230,
    gid      => 'dev',
    realname => 'Radko Lyutskanov',
  }

  @users::virtualuser { 'mihailm':
    uid      => 10231,
    gid      => 'dev',
    realname => 'Mihail Mihaylov',
  }

  @users::virtualuser { 'aleksandart':
    uid      => 10232,
    gid      => 'dev',
    realname => 'Aleksandar Todorov',
  }

  
  # ## DBK Jenkins ###
  @users::virtualuser { 'russellh':
    uid      => 10236,
    gid      => 'dev',
    realname => 'Russell Huber',
  }
}
