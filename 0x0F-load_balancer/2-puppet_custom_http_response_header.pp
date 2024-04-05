# Write configures a brand new Ubuntu machine to the requirements asked in this task

exec { 'update':
  command => 'sudo apt-get -y update',
  path    => '/usr/bin',
  before  => Exec['install Nginx'],
}

exec { 'install Nginx':
  command => 'sudo apt-get -y install nginx',
  path    => '/usr/bin',
  before  => Exec['add_header'],
}

exec { 'add_header':
  environment => ["HOST=${hostname}"],
  command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/&\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
  path        => '/usr/bin',
  before      => Exec['restart Nginx'],
}

exec { 'restart Nginx':
  command => 'sudo systemctl restart nginx',
  path    => '/usr/bin',
}
