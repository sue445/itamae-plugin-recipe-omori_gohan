download_and_install_deb "vagrant" do
  url     "https://releases.hashicorp.com/vagrant/#{node[:vagrant][:version]}/vagrant_#{node[:vagrant][:version]}_x86_64.deb"
  version node[:vagrant][:version]
  src_dir "/usr/local/src"
end
