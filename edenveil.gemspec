# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'edenveil/version'

Gem::Specification.new do |spec|
  spec.name          = "edenveil"
  spec.version       = Edenveil::VERSION
  spec.authors       = ["Martin Karrer"]
  spec.email         = ["support@bmalum.com"]
  spec.summary       = %q{A Ruby Gem for Downloading fast Files from One-Click-Hoster}
  spec.description   = %q{This Ruby Gem will allow you to download fast and easy a hughe amout of File from One-Click-Hoster like Uploaded.net/to or soon Share-Online.biz}
  spec.homepage      = "htt://edenveil.bmalum.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
