#
class profile::rbac_profile {
  rbac_role { 'new_role':
    ensure      => 'absent',
    description => 'Viewers',
    permissions => [
    {
      'object_type' => 'nodes',
      'action' => 'view_data',
      'instance' => '*'
    },
    {
      'object_type' => 'console_page',
      'action' => 'view',
      'instance' => '*'
    }],
  }

  rbac_group { 'scientists':
    ensure => 'present',
    roles  => ['Operators'],
  }
}
