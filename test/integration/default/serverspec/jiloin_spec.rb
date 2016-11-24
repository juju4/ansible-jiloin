require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end


describe service('influxdb') do
  it { should be_enabled }
  it { should be_running }
end  

describe file('/etc/nginx/sites-available/jiloin.conf') do
  it { should be_file }
  its(:content) { should match /root \/var\/www\/jiloin/ }
end
describe file('/etc/nginx/sites-enabled/jiloin.conf') do
  it { should be_file }
  it { should be_symlink }
end

