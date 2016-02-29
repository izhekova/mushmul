class profile::aem::configure_publish {
    class { '::aem::setup':
            env     => 'test',
            type    => 'publish',
            mode    => '',
            samplecontent => 'nosamplecontent',
            version => '6.1',
            params  => "'-XX:MaxPermSize=256m -Xmx1024M -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=3000 -Dcom.sun.management.jmxremote.rmi.port=3000 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false'",
   }
}
