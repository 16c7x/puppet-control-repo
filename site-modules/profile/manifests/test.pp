#
class profile::test (
  $source
) {
  class { 'ntp':
    servers => $source,
  }
}
