# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "tin_can/version"

Gem::Specification.new do |spec|
  spec.name          = "tin_can"
  spec.version       = TinCan::VERSION
  spec.authors       = ["George Protacio-Karaszi"]
  spec.email         = ["georgekaraszi@gmail.com"]

  spec.summary       = "File extractor and NAS sync"
  spec.description   = "File extractor and NAS sync"
  spec.homepage      = "https://github.com/GeorgeKaraszi/TinCan"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- spec/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
