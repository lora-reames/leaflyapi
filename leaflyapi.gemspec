# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'leaflyapi/version'

Gem::Specification.new do |spec|
  spec.name          = "leaflyapi"
  spec.version       = Leaflyapi::VERSION
  spec.authors       = ["Patrick Reames"]
  spec.email         = ["patrick.reames@gmail.com"]
  spec.summary       = %q{ruby gem for interacting with the leafly.com API}
  spec.description   = %q{get strains and strain details from leafly.com}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.5.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-plus"
  spec.add_development_dependency "coveralls"
  spec.add_runtime_dependency "httparty"
  spec.add_runtime_dependency "json"
end
