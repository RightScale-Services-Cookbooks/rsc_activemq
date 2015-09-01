require 'serverspec'

set :backend, :exec

describe file('/opt/apache-activemq-5.11.1') do
  it { should be_directory }
end

describe process("wrapper") do
  its(:user) { should eq "root" }
  it { should be_running }
end
