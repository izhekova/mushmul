class profile::aem::configure_author {
    class { '::aem::setup':
            env     => 'test',
            type    => 'author',
            mode    => '',
            samplecontent => 'nosamplecontent',
            version => '6.1',
            params  => "'-XX:MaxPermSize=256m -Xmx1024M -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=3000 -Dcom.sun.management.jmxremote.rmi.port=3000 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false'",
   }
   class { '::aem::patch':
            sp_file => 'cq-ALL-hotfix-NPR-8364-1.0.12.zip',
   }
}
