class profile::aem::install_standby {
    class { '::aem::install': 
            env     => 'test',
            type    => 'author',
            mode    => 'standby',
            master_ip => '10.28.128.170',
            samplecontent => 'nosamplecontent',
            version => '6.1',
            params  => "'-XX:MaxPermSize=256m -Xmx1224M -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=3000 -Dcom.sun.management.jmxremote.rmi.port=3000 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false'", 
    }
}
