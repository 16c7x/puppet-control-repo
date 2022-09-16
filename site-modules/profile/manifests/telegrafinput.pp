# define a new influxdb input using the telegraf type.

class profile::telegrafinput {
  include telegraf
  
  #telegraf::input { "puppetdb_metrics_peauto14.platform9.puppet.net":
  #  plugin_type => 'http',
  #  options     => [{
  #    'data_format'          => 'json',
  #    'name_override'        => 'httpjson_puppetdb_stats',
  #    'urls'                 => [ "https://peauto14.platform9.puppet.net:8081/status/v1/services?level=debug" ],
  #    'method'               => 'GET',
  #    'insecure_skip_verify' => true,
  #    'timeout'              => '5s',
  #  }],
  #  notify      => Service['telegraf'],
  #  require     => Package['telegraf'],
  #}
}
