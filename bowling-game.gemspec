# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "Bowling Game"
  spec.version       = '1.0'
  spec.authors       = ["Andu Fratu"]
  spec.email         = ["andu@andu.codes"]
  spec.summary       = %q{Ruby Bowling Game kata}
  spec.description   = %q{Ruby Bowling Game kata.}
  spec.homepage      = "https://github.com/andufratu/ruby-bowling-game/"
  spec.license       = "MIT"

  spec.files         = ['lib/bowling-game.rb']
  spec.executables   = ['bin/bowling-game']
  spec.test_files    = ['tests/test-bowling-game.rb']
  spec.require_paths = ["lib"]
end
