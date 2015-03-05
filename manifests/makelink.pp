# This define type is used to create symbolic links in the
# puppetsymlink module
#
define puppetsymlink::makelink (
  $targetpath,
  $binpath,
  $ensurelinks,
  ) {
  file { "${binpath}/${name}":
    ensure => $ensurelinks,
    target => "${targetpath}/${name}"
  }
}
