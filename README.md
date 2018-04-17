# Itamae::Plugin::Recipe::OmoriGohan

itamae tiny recipes

[![Gem Version](https://badge.fury.io/rb/itamae-plugin-recipe-omori_gohan.svg)](https://badge.fury.io/rb/itamae-plugin-recipe-omori_gohan)
[![Dependency Status](https://gemnasium.com/sue445/itamae-plugin-recipe-omori_gohan.svg)](https://gemnasium.com/sue445/itamae-plugin-recipe-omori_gohan)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-omori_gohan'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-omori_gohan

## Usage

```ruby
include_recipe "omori_gohan"
```

## Example
### Download and install deb file
```ruby
download_and_install_deb "vagrant" do
  url     "https://releases.hashicorp.com/vagrant/#{node[:vagrant][:version]}/vagrant_#{node[:vagrant][:version]}_x86_64.deb"
  version node[:vagrant][:version]
  src_dir "/usr/local/src"
end
```

* `name` : package name (**requirement**)
* `url` : package url (**requirement**)
* `version` : version (optional)
* `src_dir` : directory for package download (default is `/usr/local/src`)

### Download and install rpm file
```ruby
download_and_install_rpm "vagrant" do
  url     "https://releases.hashicorp.com/vagrant/#{node[:vagrant][:version]}/vagrant_#{node[:vagrant][:version]}_x86_64.rpm"
  version node[:vagrant][:version]
  src_dir "/usr/local/src"
end
```

* `name` : package name (**requirement**)
* `url` : package url (**requirement**)
* `version` : version (optional)
* `src_dir` : directory for package download (default is `/usr/local/src`)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing
requirements [Docker](https://www.docker.com/)

```sh
bundle exec itamae docker --node-yaml=recipes/node.yml recipes/install.rb --image=centos:7 --tag itamae-plugin:latest
DOCKER_IMAGE=itamae-plugin:latest bundle exec rspec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sue445/itamae-plugin-recipe-omori_gohan.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

