# Download and install deb file
define :download_and_install_deb, version: nil, url: nil, src_dir: "/usr/local/src" do
  raise "name is requirement" unless params[:name]
  raise "url is requirement" unless params[:url]

  basename = File.basename(params[:url])

  src_dir = params[:src_dir]

  check_command = "dpkg -l | grep '#{params[:name]}'"
  check_command << " | grep '#{params[:version]}'" if params[:version]

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
