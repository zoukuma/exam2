#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "sources.list" do
  path "/etc/apt/sources.list"
  action :create
end

execute "apt-get" do
  command "/usr/bin/apt-get update"
  action :run
end

package "apache2" do
  action :install
end

package "php5" do
  action :install
end

