# 
class profile::cron_test {
  cron { 'test file 1':
    command => '/usr/bin/touch /tmp/test1',
    user    => 'root',
    minute  => 15,
  }
}
