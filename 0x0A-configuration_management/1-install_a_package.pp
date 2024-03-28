# Install an especific version of flask (2.1.0)
package {'python3-pip':
  ensure   => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0 Werkzeug==2.0.0',
  path => ['/usr/bin'],
  unless => '/usr/bin/flask --version | grep "2.1.0"',
}
