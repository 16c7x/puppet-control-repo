#
class profile::dbprofile {
  if $$facts['db_env'] == 'prod' {
    notify { 'A':}
  } else {
    notify { 'B':}
  } 
}
