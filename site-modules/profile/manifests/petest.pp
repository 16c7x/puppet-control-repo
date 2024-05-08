# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::petest
class profile::petest {
  $version = $server_facts['serverversion']
  notify { "Puppet server version is: $version": }

  file { "/tmp/$version":
    ensure => file,
  }
}
