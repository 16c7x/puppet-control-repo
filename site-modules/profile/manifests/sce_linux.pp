# A profile to implementthe sce modules
# @param config
#   Hash of the enfiorcement config
# @param benchmark
#   The bbenchmark to use, defaults to CIS
#
# profile::sce_linux.pp
class profile::sce_linux (
  Hash $config = {},
  String $benchmark = 'cis',
) {
  class { 'sce_linux':
    benchmark => $benchmark,
    config    => $config,
  }
}
