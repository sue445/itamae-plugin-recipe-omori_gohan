# Itamae::Plugin::Recipe::OmoriGohan

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/itamae/plugin/recipe/omori_gohan`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sue445/itamae-plugin-recipe-omori_gohan.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

