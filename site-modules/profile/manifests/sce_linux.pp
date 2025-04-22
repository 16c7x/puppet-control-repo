# profile/platform/compliance/cem_enforcement.pp
class profile::sce_linux (
  Optional[Hash] $config = {}
){
  class { 'sce_linux': 
    benchmark => 'cis',
    config    => $config,
  }
}
