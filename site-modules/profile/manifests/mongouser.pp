
class profile::mongouser {

  mongodb_user { userx:
    name          => 'userx',
    ensure        => present,
    password_hash => mongodb_password('userx', 'p@ssw0rd'),
    database      => newdb,
    roles         => ['readWrite', 'dbAdmin'],
    tries         => 10,
    #require       => Class['mongodb::server'],
  }
}
