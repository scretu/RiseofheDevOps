#
# Cookbook:: RiseofheDevOps
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2' do
  action :upgrade
end

service 'apache2' do
  supports status: true
  action [:enable, :start]
end

=begin
include_recipe 'apt'

apt_repository 'nginx' do
       uri 'http://nginx.org/packages/debian/'
       distribution "#{node["lsb"]["codename"]}"
       trusted true
       key "nginx_signing.key"
end
=end
