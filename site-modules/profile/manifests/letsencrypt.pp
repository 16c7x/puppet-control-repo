#
class profile::letsencrypt {
  letsencrypt::certonly { 'puppet.example.com':
    domains => ['puppet.example.com'],
    plugin  => 'standalone',
  }
}
