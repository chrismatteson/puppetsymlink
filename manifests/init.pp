class puppetsymlink (
  $binpath = $puppetsymlink::params::binpath,
  $puppetexecpath = $puppetsymlink::params::puppetexecpath,
  $binfiles = $puppetsymlink::params::binfiles, 
  $execpath = $puppetsymlink::params::execpath,
  ) inherits puppetsymlink::params {

  unless $binpath == 'skip' {

    puppetsymlink::makelink { $binfiles:
      binpath        => $binpath,
      puppetexecpath => $puppetexecpath,
      execpath       => $execpath,
    } 
  }
}
