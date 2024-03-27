#!/usr/bin/env puppet
# Using Puppet to make changes to our configuration file.

file { '/etc/ssh/ssh_config':
   ensure => present
   content => "

	# SSH client configuration
	Host *
		IdentityFile ~/.ssh/school
		PasswordAuthentication no
",

}
