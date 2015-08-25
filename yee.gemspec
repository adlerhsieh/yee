# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yee/version'

Gem::Specification.new do |spec|
  spec.name          = "yee"
  spec.version       = Yee::VERSION
  spec.authors       = ["Adler"]
  spec.email         = ["nkj20932@hotmail.com"]
  spec.summary       = %q{An ascii output exclusively for yee}
  spec.description   = %q{Basically a one-line command line app that outputs yee image.}
  spec.homepage      = "https://github.com/nkj20932/yee"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'
end
