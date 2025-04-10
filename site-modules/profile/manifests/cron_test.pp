# 
class profile::cron_test (
  $minute = 20,
){
  cron { 'test file 1':
    command => '/usr/bin/touch /tmp/test1',
    user    => 'root',
    minute  => 15,
  }

  cron { 'test file 2':
    command => '/usr/bin/touch /tmp/test2',
    user    => 'root',
    minute  => $minute,
  }
}
