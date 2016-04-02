download_and_install_rpm "vagrant" do
  url     "https://releases.hashicorp.com/vagrant/#{node[:vagrant][:version]}/vagrant_#{node[:vagrant][:version]}_x86_64.rpm"
  version node[:vagrant][:version]
  src_dir "/usr/local/src"
end
