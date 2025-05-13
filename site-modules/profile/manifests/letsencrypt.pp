#
class profile::letsencrypt {
  class { 'letsencrypt':
    config => {
      email  => 'foo@example.com',
      server => 'https://acme-v02.api.letsencrypt.org/directory',
    },
  }
}
