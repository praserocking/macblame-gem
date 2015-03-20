# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'macblame/version'

Gem::Specification.new do |spec|
  spec.name          = "macblame"
  spec.version       = Macblame::VERSION
  spec.authors       = ["Prasanna Sundar"]
  spec.email         = ["prasanna.s@freshdesk.com"]
  spec.summary       = %q{macblame - A better alternative to 'git blame'}
  spec.description   = %q{macblame shows stats about the files tracked by git. It uses the output of 'git blame' and summarize it in a cleaner and intuitive format.}
  spec.homepage      = "https://github.com/macblame-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["macblame"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
