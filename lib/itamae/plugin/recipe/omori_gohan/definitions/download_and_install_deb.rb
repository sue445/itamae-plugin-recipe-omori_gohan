# Download and install deb file
define :download_and_install_deb, version: nil, url: nil do
  basename = File.basename(params[:url])

  name     = params[:name]
  version  = params[:version]

  [
    "wget #{params[:url]} -O #{basename}",
    "dpkg -i #{basename}"
  ].each do |command|
    execute command do
      not_if "dpkg -l | grep #{name} | grep #{version}"

      cwd "/tmp"
    end
  end
end
