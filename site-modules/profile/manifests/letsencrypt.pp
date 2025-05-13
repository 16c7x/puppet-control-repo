#
class profile::letsencrypt {
  class { 'letsencrypt':
    email => 'you@example.com',
  }

  letsencrypt::certonly { 'example.com':
    domains       => ['example.com', 'www.example.com'],
    plugin        => 'webroot',
    webroot_paths => {
      'example.com'     => '/var/www/html',
      'www.example.com' => '/var/www/html',
    },
  }
}
