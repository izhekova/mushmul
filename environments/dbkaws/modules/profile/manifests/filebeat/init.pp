class profile::filebeat::init {
    outputs => {
            'logstash'     => {
            'hosts' => ["10.133.38.27:5044"]
            },
                                                   },
    
    }
