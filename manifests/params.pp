# This file contains the default parameters for the puppetsymlink module
#
class puppetsymlink::params {
  $targetpath = '/opt/puppet/bin'
  $ensurelinks = 'link'
  case $::kernel {
    'Linux':   { $binpath = '/usr/local/bin' }
    'Solaris': { $binpath = '/usr/bin' }
    'AIX':     { $binpath = '/usr/bin' }
    'Darwin':  { $binpath = '/usr/bin' }
    'BSD':     { $binpath = '/usr/bin' }
    default:   { $binpath = 'fail' }
  }
}
