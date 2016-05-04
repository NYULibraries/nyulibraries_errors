$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nyulibraries_errors/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nyulibraries_errors"
  s.version     = NyulibrariesErrors::VERSION
  s.authors     = ["Barnaby Alter"]
  s.email       = ["barnaby.alter@nyu.edu"]
  s.homepage    = "https://github.com/NYULibraries/nyulibraries_errors"
  s.summary     = "Engine for hosting custom dynamic error messages for Rails applications."
  s.description = "Engine for hosting custom dynamic error messages for Rails applications."
  s.license     = "MIT"

  s.files       = `git ls-files`.split($\)
  s.test_files  = s.files.grep(%r{^(test|spec|features)/})
end
