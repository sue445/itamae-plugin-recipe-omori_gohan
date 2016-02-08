# Download and install deb file
define :download_and_install_deb, version: nil, url: nil, src_dir: "/usr/local/src" do
  basename = File.basename(params[:url])

  name     = params[:name]
  version  = params[:version]
  src_dir  = params[:src_dir]

  check_command = "dpkg -l | grep #{name}"
  check_command << " | grep #{version}" if version

  [
    "wget #{params[:url]} -O #{basename}",
    "dpkg -i #{basename}"
  ].each do |command|
    execute command do
      not_if check_command

      cwd src_dir
    end
  end
end
