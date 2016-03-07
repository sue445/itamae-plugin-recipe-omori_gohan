include_recipe "omori_gohan"

case node[:platform]
when "debian"
  include_recipe "./debian"
when "redhat"
  # TODO
end
