# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'randomuser/version'

Gem::Specification.new do |gem|

  #-- author info
  gem.authors       = ['Dominic Giglio']
  gem.email         = ['humanshell@gmail.com']
  gem.homepage      = 'http://developr.me'
  
  #-- gem info
  gem.name          = 'randomuser'
  gem.version       = Randomuser::VERSION
  gem.license       = 'MIT'
  gem.summary       = %q{Access Random User Generator API}
  gem.description   = %q{This gem returns simple JSON/hash responses from the Random User Generator API.}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  #-- development dependencies
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'rake'
end
