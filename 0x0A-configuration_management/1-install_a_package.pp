# Install an especific version of flask 2.1.0

package { 'python3-pip':
  ensure   => 'installed 2.1.0',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  refreshonly => true,
  unless => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],
}
