#
class profile::test {
  if $facts['datacentre'] == 'A' {
    $source = ['216.239.35.0']
  } else {
    $source = ['216.239.35.1']
  }

  class { 'ntp':
    servers => $source,
  }
}
