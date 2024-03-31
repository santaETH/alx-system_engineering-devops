# Install and configure an Nginx server using Puppet.

package { 'nginx':
  ensure => installed,
}

file_line { 'install':
  ensure => 'present',
  path	 => '/etc/nginx/sites-enabled/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4;',
}

file { '/var/www/html/404.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => package['nginx'],
}
