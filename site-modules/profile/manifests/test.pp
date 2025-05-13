#
class profile::test (
  $source = time1.google.com,
) {
  class { 'ntp':
    servers => $source,
  }
}
