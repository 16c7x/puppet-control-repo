# 
# @param log_level
#   Log level string
# 
class profile::app_debug (
  String $log_level = '1',
) {
  file { '/etc/loglevel.yaml':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('profile/loglevel.epp', { 'log_level' => $log_level }),
  }
}
