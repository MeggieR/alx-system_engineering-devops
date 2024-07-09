#!/usr/bin/env bash
# use puppet to set the configuration to use gien private key to refuse to authenticate using password
file {'/etc/ssh/ssh_config':
  ensure => 'present',
}

file_line {'Turn off password authentication':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match   => 'PasswordAuthentication yes',
  replace => 'true',
}

file_line {'Use a Identity file':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/config',
  match   => '^IdentityFile',
  replace => 'present',
}
