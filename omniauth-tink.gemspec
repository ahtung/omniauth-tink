# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-tink/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dunya Kirkali"]
  gem.email         = ["dunyakirkali@gmail.com"]
  gem.description   = %q{Official OmniAuth strategy for Tink.}
  gem.summary       = %q{Official OmniAuth strategy for Tink.}
  gem.homepage      = "https://github.com/ahtung/omniauth-tink"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-bunq"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Tink::VERSION

  gem.add_dependency 'omniauth', '~> 1.5'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
