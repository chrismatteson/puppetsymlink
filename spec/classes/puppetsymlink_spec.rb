require 'spec_helper'
describe('puppetsymlink', :type => :class) do
  let(:fact) { { :kernel => 'Linux' } }
  it {
    should contain_exec('puppet').with({
      :command => 'ln -s /opt/puppet/bin/puppet /usr/local/bin/puppet',
    })
  }
end
