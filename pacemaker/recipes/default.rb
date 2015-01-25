#
# Cookbook Name:: pacemaker
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "pacemaker" do 
	action :install
end

execute 'corosync' do
	user 'root'
	not_if { File.exists?("/etc/corosync/corosync.conf") }
	command <<-EOF
	cp /etc/corosync/corosync.conf.example /etc/corosync/corosync.conf
	EOF
end

service "pacemaker" do
	action [ :enable, :start ]
end

