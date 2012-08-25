# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "emojify"
  gem.version       = '0.0.1'
  gem.authors       = ["Robert Evans"]
  gem.email         = ["robert@codewranglers.org"]
  gem.description   = %q{Use emoji in your content. Pass it a string and it will return the string with emoji images.}
  gem.summary       = %q{Use emoji in your content}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_development_dependency 'minitest'
  gem.add_dependency "railties", ">= 3.1.0", "< 5.0"
  gem.add_dependency "thor",     "~> 0.16"
end
