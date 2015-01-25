#
# Cookbook Name:: pcs
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "pcs" do
	action :install
end

service 'pcsd' do
	action [ :enable, :start ]
end

