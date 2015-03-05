require 'spec_helper'
describe('puppetsymlink', :type => :class) do

  context 'Unsupported OS' do
    let(:facts) { { :kernel => 'Windows' } }
      it do
        expect { should compile }. to raise_error
      end
  end

  context 'Linux - Agent' do
    let(:facts) { { :kernel => 'Linux', :symlinkexecutables => ["hiera", "puppet", "mco", "pe-man"] } }
    it {
      [ 'hiera',
        'puppet',
        'mco',
        'pe-man',
      ].each do |bin|
        should contain_file("/usr/local/bin/#{bin}").with({
          :target => "/opt/puppet/bin/#{bin}",
        })
      end
    }
  end

  context 'Linux - Master' do
    let(:facts) { { :kernel => 'Linux', :symlinkexecutables => ["hiera", "puppet", "mco", "pe-man", "validate_postgresql_connection.sh"] } }
    it {
      [ 'hiera',
        'puppet',
        'mco',
        'pe-man',
        'validate_postgresql_connection.sh',
      ].each do |bin|
        should contain_file("/usr/local/bin/#{bin}").with({
          :target => "/opt/puppet/bin/#{bin}",
        })
      end
    }
  end

  context 'Darwin - Agent' do
    let(:facts) { { :kernel => 'Darwin', :symlinkexecutables => ["hiera", "puppet", "mco", "pe-man"] } }
    it {
      [ 'hiera',
        'puppet',
        'mco',
        'pe-man',
      ].each do |bin|
        should contain_file("/usr/local/bin/#{bin}").with({
          :target => "/opt/puppet/bin/#{bin}",
        })
      end
    }
  end

  context 'Solaris - Agent' do
    let(:facts) { { :kernel => 'Solaris', :symlinkexecutables => ["hiera", "puppet", "mco", "pe-man"] } }
    it {
      [ 'hiera',
        'puppet',
        'mco',
        'pe-man',
      ].each do |bin|
        should contain_file("/usr/bin/#{bin}").with({
          :target => "/opt/puppet/bin/#{bin}",
        })
      end
    }
  end

  context 'AIX - Agent' do
    let(:facts) { { :kernel => 'AIX', :symlinkexecutables => ["hiera", "puppet", "mco", "pe-man"] } }
    it {
      [ 'hiera',
        'puppet',
        'mco',
        'pe-man',
      ].each do |bin|
        should contain_file("/usr/bin/#{bin}").with({
          :target => "/opt/puppet/bin/#{bin}",
        })
      end
    }
  end

  context 'BSD - Agent' do
    let(:facts) { { :kernel => 'BSD', :symlinkexecutables => ["hiera", "puppet", "mco", "pe-man"] } }
    it {
      [ 'hiera',
        'puppet',
        'mco',
        'pe-man',
      ].each do |bin|
        should contain_file("/usr/bin/#{bin}").with({
          :target => "/opt/puppet/bin/#{bin}",
        })
      end
    }
  end
end
