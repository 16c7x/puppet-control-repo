# This is a profile to simulate a catalog compilation failure
# It's only use is for testing
# /etc/puppetlabs/facter/facts.d/fail_catalog.txt 
# fail_catalog=true
class profile::fail {
  if $facts['fail_catalog'] == 'true' {
    fail('i was told to fail...')
  }
}
