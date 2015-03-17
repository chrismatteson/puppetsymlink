Facter.add(:binpathwritable) do
  setcode do
    kernel = Facter.value(:kernel)
    case kernel
    when 'Linux'
      File.writable?('/usr/local/bin')
    else
      File.writable?('/usr/bin')
    end
  end
end
