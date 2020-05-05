describe file("/tmp/itamae_current_user") do
  its(:content) { should eq "vagrant\n" }
end
