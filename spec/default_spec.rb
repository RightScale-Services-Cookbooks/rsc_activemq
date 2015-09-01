require 'spec_helper'

describe 'rsc_activemq::default' do
  let(:chef_run) do
    ChefSpec::Runner.new(platform: 'ubuntu', version: '14.04') do |node|
      node.set['activemq']['mirror'] = 'http://mirrors.sonic.net/apache/activemq/5.12.0/apache-activemq-5.12.0-bin.tar.gz'
      node.set['java']['install_flavor'] = 'oracle'
      stub_command('test -f /var/run/activemq.pid')
    end.converge(described_recipe)
  end

  it 'sets accept_oracle_download_terms to true' do
    expect(chef_run.node['java']['oracle']['accept_oracle_download_terms']).to eq(true)
  end

  it 'includes recipe activemq::default' do
    expect(chef_run).to include_recipe('activemq::default')
  end
end
