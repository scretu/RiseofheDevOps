#
# Cookbook:: RiseofheDevOps
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache' do
  action :upgrade
end

service 'apache2' do
  supports status: true
  action [:enable, :start]
end
