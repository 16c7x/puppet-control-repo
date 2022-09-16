#
class profile::baseline::linux {

  class { '::ssh' :
    sshd_x11_forwarding => 'yes',
    ssh_key_ensure      => 'absent',
    ssh_key_import      => false,   
  #  purge_unmanaged_sshkeys = false,
  #  storeconfigs_enabled = false,
  }

  class { '::selinux' :
    mode => 'disabled'
  }
}
