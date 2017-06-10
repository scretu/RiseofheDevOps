#
# Cookbook:: RiseofheDevOps
# Recipe:: deploy
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode 0o0644
  notifies :restart, 'service[apache2]', :delayed
end

service 'apache2' do
  supports :status => true
  action :nothing
end
