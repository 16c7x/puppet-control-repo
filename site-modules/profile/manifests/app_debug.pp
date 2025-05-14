# 
# @param loglevel
#   Log level string
# 
class profile::app_debug (
  String $loglevel = '1',
) {
  file { '/etc/loglevel.yaml':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('profile/loglevel.epp'),
  }
}
