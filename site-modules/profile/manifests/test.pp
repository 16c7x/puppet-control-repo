# template code - debuglevel = <% $profile::test::source {-%>
class profile::test (
  Array $source = ["time1.google.com"],
) {
  class { 'ntp':
    servers => $source,
  }
}
