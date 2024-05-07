#
class profile::baseline::linux {

  class { '::ssh' :
    manage_sshkey => false,
  }
}
