class role::author_primary {
    include profile::users::aem
    include profile::groups::aem
    include profile::sudo::aem
    include profile::java::java8
    include profile::aem::configure_author_primary
    include profile::aem::install_author_primary
}

