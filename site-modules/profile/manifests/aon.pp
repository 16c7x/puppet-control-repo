# 
class profile::aon {
  $package_array = lookup('packages', { 'merge' => 'unique' })

  package { $package_array:
    ensure => 'installed',
  }
}
