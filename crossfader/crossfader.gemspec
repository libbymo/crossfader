# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crossfader/version'

Gem::Specification.new do |spec|
  spec.name          = "crossfader"
  spec.version       = Crossfader::VERSION
  spec.authors       = ["Jeff McCune"]
  spec.email         = ["jeff@puppetlabs.com"]
  spec.description   = %q{Easily develop on multiple runtimes and gemsets}
  spec.summary       = %q{Crossfader is a development tool to manage multiple ruby versions and gemsets}
  spec.homepage      = "https://github.com/puppetlabs/crossfader"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "trollop"
  spec.add_dependency "json"
end
