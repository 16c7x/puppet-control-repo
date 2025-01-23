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




#
class profile::test {
  if $facts['datacentre'] == 'A' {
    $source = ['216.239.35.0']
  } elseif $facts['datacentre'] == 'B' {
    $source = ['216.239.35.1']
  } elseif $facts['datacentre'] == 'C' {
    $source = ['216.239.35.3']
  } elseif $facts['datacentre'] == 'D' {
    $source = ['216.239.35.4']
  } elseif $facts['datacentre'] == 'E' {
    $source = ['216.239.35.5']
  } elseif $facts['datacentre'] == 'F' {
    $source = ['216.239.35.6']
  }

  class { 'ntp':
    servers => $source,
  }
}

#
class profile::test (
  $source
) {
  class { 'ntp':
    servers => $source,
  }
}
