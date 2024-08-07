# 
class profile::aon {
  $required_packages = lookup('required_packages', { 'merge' => 'unique' })
  $excluded_packages = lookup('excluded_packages', { 'merge' => 'unique' }) 

  package { $required_packages:
    ensure => 'installed',
  }

  package { $excluded_packages:
    ensure => 'absent',
  }
}
