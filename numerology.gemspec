# -*- encoding: utf-8 -*-
require File.expand_path('../lib/numerology/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steven Hammond"]
  gem.email         = ["shammond@patientslikeme.com"]
  gem.description   = %q{Format numbers using human readable examples.}
  gem.summary       = %q{Number formatting by example.}
  gem.homepage      = "https://github.com/patientslikeme/numerology"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "numerology"
  gem.require_paths = ["lib"]
  gem.version       = Numerology::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'cucumber'
end
