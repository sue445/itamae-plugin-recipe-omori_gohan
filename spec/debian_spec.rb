context "When debian", if: host_inventory[:platform] == "debian" do
  describe package("vagrant") do
    it { should be_installed }
  end

  describe file("/usr/bin/vagrant") do
    it { should be_file }
    it { should be_executable }
  end
end
