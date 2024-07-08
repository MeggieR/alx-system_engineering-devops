# Create a manifest that kill processes with puppet

exec { 'pkill -f killmenow':
  path  => '/usr/bin/:/usr/local/bin/:/bin/:',
}
