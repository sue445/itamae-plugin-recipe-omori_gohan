include_recipe "omori_gohan"

case node[:platform]
when "debian"
  include_recipe "./debian"
when "redhat"
  include_recipe "./centos"
end

include_recipe "./common"
