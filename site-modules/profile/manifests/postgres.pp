class profile::postgres {
  class { 'postgresql::server':
  }
  
  postgresql::server::role { 'bob':
    password_hash => postgresql::postgresql_password('bob', 'mypasswd'),
  }

}
