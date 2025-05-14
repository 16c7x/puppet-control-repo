#
class profile::letsencrypt {
  letsencrypt::certonly { 'ec2-3-252-226-139.eu-west-1.compute.amazonaws.com':
    domains => ['ec2-3-252-226-139.eu-west-1.compute.amazonaws.com'],
    plugin  => 'standalone',
  }
}
