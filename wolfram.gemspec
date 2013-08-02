# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wolfram/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Calvin Delamere"]
  gem.email         = ["calvin.delamere@gmail.com"]
  gem.description   = "queries wolfram alpha without their api"
  gem.summary       = "queries wolfram alpha without their api"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "wolfram"
  gem.require_paths = ["lib"]
  gem.version       = Wolfram::VERSION
end
