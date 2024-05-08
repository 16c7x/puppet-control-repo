#
class role::docker {
  include ::profile::docker
  $version = $facts['puppetversion']
  notify { "Puppet version on this node: $version": }
}
