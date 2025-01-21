#
class profile::dbprofile {
  if ::db_env == 'prod' {
    notify { 'A':}
  } elsif ::db_env == 'non-prod' {
    notify { 'B':}
  } else {
    fail('Unknown datacentre')
  }
}
