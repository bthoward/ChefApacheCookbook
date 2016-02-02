require 'spec_helper'
# Test 3.1
describe 'apache::default' do
  describe port(80) do
    it {should be_listening }
  end

  describe command('curl http://localhost') do
    its(:stdout) { should match /Hello, World!/ }
  end
end
