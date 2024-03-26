#!/usr/bin/pub
# Using Puppet, install flask Version 2.1.0 from pip3.

exec { 'flask':
  ensure => '2.10' 
  provider => 'pip3'
}
