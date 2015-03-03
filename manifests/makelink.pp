define puppetsymlink::makelink (
  $binpath,
  $puppetexecpath,
  $execpath
  ) {

  exec { "$binpath/${name}":
    command => "ln -s $puppetexecpath/${binfiles} $binpath/${name}",
    onlyif  => "test -s $puppetexecpath/${name}",
    unless  => "test -s $binpath/${name}",
    path    => "$execpath",
  }
}
