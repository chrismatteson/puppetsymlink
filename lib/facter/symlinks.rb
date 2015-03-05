Facter.add(:symlinkexecutables) do
  setcode do
    symlink = Array.new
    [ 'hiera',
      'puppet',
      'mco',
      'pe-man',
      'validate_postgresql_connection.sh'
    ].each do |bin|
      if File.exist?("/opt/puppet/bin/#{bin}")
        symlink.push(bin)
      end
    end
    symlink
  end
end
