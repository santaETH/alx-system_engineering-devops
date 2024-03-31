# Install and configure an Nginx server using Puppet.

package { 'nginx':
  ensure => installed,
}

file_line { 'redirection-301':
  ensure => 'present',
  path	 => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { '/var/www/html/index.nginx-debian.html:
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => package['nginx'],
}