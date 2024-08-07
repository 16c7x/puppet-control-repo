# 
class profile::aon {
  $required_packages = lookup('required_packages', { 'merge' => 'unique' })
  $excluded_packages = lookup('excluded_packages', { 'merge' => 'unique' }) 

  package { $required_packages:
    ensure => 'installed',
  }

  unless $excluded_packages == undef {
    package { $excluded_packages:
      ensure => 'absent',
    }
  }
}
