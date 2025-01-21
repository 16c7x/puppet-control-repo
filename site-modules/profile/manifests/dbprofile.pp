#
class profile::dbprofile {
  if ::db_env == 'prod' {
    notify { 'A':}
  } elsif Facts['db_env'] == 'non-prod' {
    notify { 'B':}
  } else {
    fail('Unknown datacentre')
  }
}
