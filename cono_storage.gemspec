# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cono_storage/version'

Gem::Specification.new do |spec|
  spec.name          = "cono_storage"
  spec.version       = ConoStorage::VERSION
  spec.authors       = ["kkosuge"]
  spec.email         = ["root@kksg.net"]
  spec.summary       = %q{OpenStack Swift Client for ConoHa オブジェクトストレージ}
  spec.description   = %q{OpenStack Swift Client for ConoHa オブジェクトストレージ}
  spec.homepage      = "https://github.com/kkosuge/cono_storage"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_dependency "mimemagic"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
