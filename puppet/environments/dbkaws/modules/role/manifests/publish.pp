class role::publish {
    include profile::users::aem
    include profile::groups::aem
    include profile::sudo::aem
    include profile::java::java8
    include profile::aem::configure_publish
    include profile::aem::install_publish
}

