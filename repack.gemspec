# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'repack/version'

Gem::Specification.new do |spec|
  spec.name          = "repack"
  spec.version       = Repack::VERSION
  spec.authors       = ["Adam Melnyk"]
  spec.email         = ["adam.melnyk@gmail.com"]

  spec.summary       = %q{A gem for adding markup on repackaged items}
  spec.description   = %q{A gem for adding markup on repackaged items depending on product type and number of workers needed for each job}
  spec.homepage      = "https://github.com/adamrmelnyk/repack"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
