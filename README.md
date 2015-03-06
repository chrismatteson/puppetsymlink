# puppetsymlink
Creates sym links in common executable path locations to puppet, hiera, facter, mco, pe-man and validate_postgresql_connection.sh executables in the puppet bin directory.

This module should work across a very wide set of operating systems using both open source and enterprise, however it's presently only been tested on Red Hat with Puppet Enterprise.  Please submit bug reports or pull requests if unexpected behavior occurs on other platforms. 

This module uses a custom fact 'symlinkexecutables' to search for the four executables which puppet in versions <3.8 would put in /usr/local/bin or /usr/bin, as well as for a shell script which the server would leave in /usr/local/bin that has been moved to /opt/puppet/bin.

Parameters:
$ensurelinks - default to 'link', this can be set to 'absent' or 'false' to remove links
$symlinkexecutables - this defaults to reading the symlinkexecutables custom fact, but can be passed any arbitrary executable to create symlinks to puppet binarys.
$binpath - the default for this varies by kernel type to match the previous behavior for <3.8 versions of puppet.  It can be modified however to create symlinks in any arbitrary location.
$targetpath - the location of the puppet binaries.  This defaults to /opt/puppet/bin

