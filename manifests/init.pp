# This module recreates the sym links in /usr/local/bin or /usr/bin
# which were removed in 3.8 per ticket RE-3658
#
class puppetsymlink (
  $symlinkexecutables = $::symlinkexecutables,
  $binpath = $puppetsymlink::params::binpath,
  $targetpath = $puppetsymlink::params::targetpath,
  $ensurelinks = $puppetsymlink::params::ensurelinks,
  ) inherits puppetsymlink::params {

  if $binpath == 'fail' {
    fail('This operating system is not supported')
  }
  else {
    puppetsymlink::makelink { $symlinkexecutables:
      ensurelinks => $ensurelinks,
      binpath     => $binpath,
      targetpath  => $targetpath,
    }

  }
}
