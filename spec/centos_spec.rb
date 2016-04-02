context "When CentOS", if: host_inventory[:platform] == "redhat" do
  describe package("vagrant") do
    it { should be_installed }
  end

  describe file("/usr/bin/vagrant") do
    it { should be_file }
    it { should be_executable }
  end
end
