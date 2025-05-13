#
class profile::letsencrypt {
  class { 'letsencrypt':
    email => 'admin@example.com',
  }

  letsencrypt::certonly { 'puppet.example.com':
    domains        => ['puppet.example.com'],
    plugin         => 'webroot',
    webroot_paths  => ['/opt/puppetlabs/server/data/console-services/public'],
    manage_cron    => true,  # enables auto-renewal 
  }
}
