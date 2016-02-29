class profile::java::java8 {
    class { 'jdk_oracle':
        version => '8',
        ensure  => 'installed',
    }
    include jdk_oracle::java_home
}
