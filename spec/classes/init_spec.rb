require 'spec_helper'
describe 'el6repos' do

  context 'with defaults for all parameters' do
    it { should contain_class('el6repos') }
  end
end
