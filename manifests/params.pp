class puppetsymlink::params {

  $puppetexecpath = '/opt/puppet/bin'
  $execpath = '/bin:/sbin:/usr/bin:/usr/sbin'
  $binfiles = [ 'puppet','hiera','mco','pe-man','validate_postgresql_connection.sh' ]
  case $kernel {
    'Linux':   { $binpath = '/usr/local/bin' }
    'Solaris': { $binpath = '/usr/bin' }
    'AIX':     { $binpath = '/usr/bin' }
    'Darwin':  { $binpath = '/usr/local/bin' }
    'BSD':     { $binpath = '/usr/bin' }
    default:   { $binpath = 'skip' }
  }
}
