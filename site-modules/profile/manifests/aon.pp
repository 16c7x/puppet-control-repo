# 
class profile::aon {
  $package_array = lookup('my_array', { 'merge' => 'unique' })

  package { $package_array:
    ensure => 'installed',
  }
}
