#
# Cookbook Name:: firewalld
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "firewalld" do
	action [ :stop, :disable ]
end

bash 'timezone' do
	user 'root'
	code <<-EOF
mv /etc/localtime /etc/localtime.orig
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
	EOF
	not_if "strings /etc/localtime | grep -q 'JST'"
end


