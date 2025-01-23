#
class profile::test {
  package { 'ntp':
    ensure => installed,
  }

  if $facts['datacentre'] == 'A' {
    $source = '216.239.35.0'
  } else {
    $source = '216.239.35.1'
  }

  file { '/etc/ntp.conf':
    content => "server ${source} iburst",
  }

  service { 'ntp':
    ensure => running,
    enable => true,
  }
}
