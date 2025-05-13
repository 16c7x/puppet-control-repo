#
class profile::letsencrypt {
  class { 'letsencrypt':
    email => 'you@example.com',
  }

  letsencrypt::certonly { 'example.com':
    domains       => ['example.com', 'www.example.com'],
    plugin        => 'webroot',
    webroot_paths => ['/var/www/html', '/var/www/html'],
  }
}
