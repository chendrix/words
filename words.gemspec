# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'words/version'

Gem::Specification.new do |gem|
  gem.name        = 'words'
  gem.version     = Words::VERSION
  gem.license     = 'MIT'
  gem.summary     = 'Words calculates shit'
  gem.description = <<DESCRIPTION

  TBD
DESCRIPTION

  gem.author        = 'Chris Hendrix'
  gem.email         = 'cah276@cornell.edu'
  gem.homepage      = 'https://github.com/chendrix'
  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '~> 2.1'

  gem.add_development_dependency 'bundler', '~> 1.7'
  gem.add_development_dependency 'rake', '~> 10.4'
  gem.add_development_dependency 'rspec', '~> 3.1.0'
end
