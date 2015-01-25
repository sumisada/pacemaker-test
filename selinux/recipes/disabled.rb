bash 'selinux' do
	user 'root'
	code <<-EOF
cp -p /etc/sysconfig/selinux /etc/sysconfig/selinux.orig
sed -i 's/^SELINUX=.*$/SELINUX=disabled/' /etc/sysconfig/selinux
setenforce 0
	EOF
end


#execute "disable selinux enforcement" do
#	only_if "which selinuxenabled && selinuxenabled"
#	command "setenforce 0"
#	acition :run
#	notifies :create, "template[/etc/selinux/config]"
#end

#template "/etc/selinux/config" do
#	source "sysconfig/selinux.erb"
#	variables(
#		:selinux => "disabled",
#		:selinuxtype => "targeted"
# 	)
#	action :nothing
#end


