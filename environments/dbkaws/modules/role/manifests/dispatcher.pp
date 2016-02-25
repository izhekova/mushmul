class role::dispatcher {
    include profile::apache::dispatcher
    include profile::aem::configure_dispatcher
    include profile::aem::install_dispatcher
    include profile::users::jenkins
    include profile::sudo::jenkins
}
