#
class profile::dbprofile {
  if $db_env == 'prod' {
    notify { 'A':}
  } else {
    notify { 'B':}
  } 
}
