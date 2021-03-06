# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'placehold_it/version'

Gem::Specification.new do |gem|
  
  gem.name          = "placehold_it"
  gem.version       = PlaceholdIt::VERSION
  gem.authors       = ["Florian Nitschmann"]
  gem.email         = ["f.nitschmann@visionred.org"]
  gem.description   = %q{A Gem for custom placeholder images created by www.placehold.it}
  gem.summary       = %q{Gem for simple placeholder images in Rails.}
  gem.homepage      = "https://github.com/fnitschmann/placehold_it"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency 'rake'

end
