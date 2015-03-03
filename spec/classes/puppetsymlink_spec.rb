require 'spec_helper'
describe('puppetsymlink', :type => :class) do
  let(:facts) { {:kernel => 'Linux' } }
  it {
    should contain_exec('puppet') \
      .with_command('ln -s /opt/puppet/bin/puppet /usr/local/bin/puppet')
  }
end
