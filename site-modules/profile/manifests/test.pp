#
class profile::baseline {
  if $facts['datacentre'] == 'A' {
    $source = '10.1.1.0'
  } else {
    $source = '10.2.1.0'
  }

  class { 'ntp':
    servers => $source,
  }
}
