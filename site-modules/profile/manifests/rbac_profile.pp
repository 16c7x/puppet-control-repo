#
class profile::rbac_profile {
  rbac_user { 'testing account':
    ensure       => present,
    name         => 'testing',
    display_name => 'Just a testing account',
    email        => 'testing@puppetlabs.com',
    password     => 'puppetlabs',
    roles        => [ 1,2 ],
  }

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
