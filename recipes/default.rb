#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
directory node['learn_chef_httpd']['web']['document_root'] do
  recursive true
end
package 'httpd'

service 'httpd' do
  
  action [:enable, :start]
end
file '/var/www/html/index.html' do
  content 'hello dubai'
  action :create
end
