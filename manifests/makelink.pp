define puppetsymlink::makelink (
  $targetpath,
  $binpath,
  $ensurelinks,
  ) {
  file { "$binpath/${name}":
    ensure => "$ensurelinks",
    target => "$targetpath/${name}"
  }
}
