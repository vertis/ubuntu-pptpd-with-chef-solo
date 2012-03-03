package 'pptpd' do
  action :install
  options "--force-yes"
end
.
directory '/etc/ppp/' do
  mode '755'
end

template "/etc/ppp/chap-secrets" do
  source "chap-secrets.erb"
  owner "root"
  group "root"
  mode 0755
end

cookbook_file '/etc/ppp/pptp-options' do
  source 'pptp-options'
end

cookbook_file '/etc/rc.local' do
  source 'rc.local'
end

execute "setup forwarding" do
  command "echo '
  net.ipv4.ip_forward=1' >> /etc/sysctl.conf && sysctl -p"
end

execute "setup dns" do
  @file = '/etc/ppp/pptpd-options'
  @content = %|ms-dns 208.67.222.222
ms-dns 208.67.220.220|
  not_if do
    File.exist?(@file) && File.read(@file) =~ /#{@content}/
  end
  command "echo \"#{@content}\" >> #{@file}"
end

execute "setup ip ranges" do
  @file = '/etc/pptpd.conf'
  @content = %|localip 172.198.1.4
remoteip 172.198.1.50-100|
  not_if do
    File.exist?(@file) && File.read(@file) =~ /#{@content}/
  end
  command "echo \"#{@content}\" >> #{@file}"
end

execute "restart pptpd" do
  command "/etc/init.d/pptpd restart"
end

