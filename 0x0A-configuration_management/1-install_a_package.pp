#!/usr/bin/pup
# Install an especific version of flask (2.1.0)

package {'python3-pip':
  ensure   => '2.1.0',
  provider => 'pip3'
}
