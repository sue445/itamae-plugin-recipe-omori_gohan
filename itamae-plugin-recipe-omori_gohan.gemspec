# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/omori_gohan/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-omori_gohan"
  spec.version       = Itamae::Plugin::Recipe::OmoriGohan::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]

  spec.summary       = %q{itamae tiny recipes}
  spec.description   = %q{itamae tiny recipes}
  spec.homepage      = "https://github.com/sue445/itamae-plugin-recipe-omori_gohan"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
end
