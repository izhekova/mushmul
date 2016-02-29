File {
    ignore => '.svn' 
}

if versioncmp($::puppetversion, '3.6.1') >= 0 {
    Package {
        allow_virtual => true, }
    }

node ip-10-28-0-31 {
    include role::base
}

node /^ip-10-133-4-\d/ {
    include role::base
    include role::docker
}

node dbkeuwprod-puppet {
    include role::base 
}

node ip-10-28-0-87 {
        include role::base
}

# Following should match IP range 10.28.128.[128-191]
node /^ip-10.28-128-(12[8-9]|1[3-8][0-9]|19[0-1]+)/ {
    include role::base
#    include role::author
    include role::author_primary
}

# Following should match IP range 10.28.128.[64-127]
node /^ip-10-28-128-(6[4-9]|[7-9][0-9]|1[0-1][0-9]|12[0-7]+)/ {
    include role::base
    include role::publish
}

# Following should match IP range 10.28.129.[1-62]
node /^ip-10-28-129-([1-9]|[1-5][0-9]|6[0-2]+)/ {
    include role::base
    include role::dispatcher
}

# Following should match IP range 10.28.129.[192-254]
node /^ip-10-28-128-(19[2-9]|2[0-4][0-9]|25[0-4]+)/ {
    include role::base
#    include role::author
    include role::standby
}

node dbkeuwprod-zabbix {
    include role::zabbix_proxy
}
