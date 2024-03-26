#!/usr/bin/pup
# Using Puppet, install flask Version 2.1.0 from pip3.

exec { 'uninstall_flask':
  command => '/usr/bin/pip3 uninstall -y Flask',
  onlyif  => '/usr/bin/pip3 show Flask',
}

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  unless      => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require     => Package['python3-pip'],
}
