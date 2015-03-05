class puppetsymlink::params {
  $targetpath = '/opt/puppet/bin'
  $ensurelinks = 'link'
  case $::kernel {
    'Linux':   { $binpath = '/usr/local/bin' }
    'Solaris': { $binpath = '/usr/bin' }
    'AIX':     { $binpath = '/usr/bin' }
    'Darwin':  { $binpath = '/usr/local/bin' }
    'BSD':     { $binpath = '/usr/bin' }
    default:   { $binpath = 'fail' }
  }
}
