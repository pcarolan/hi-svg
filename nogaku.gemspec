$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nogaku/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "Nogaku"
  s.version     = Nogaku::VERSION
  s.authors     = ["Pat Carolan"]
  s.email       = ["patrick.carolan@gmail.com"]
  s.homepage    = ""
  s.summary     = "A human interface for ruby and rails."
  s.description = "for Michael"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  # s.add_dependency "nokogiri", "1.6.0"

  s.add_development_dependency "sqlite3"
  # s.add_development_dependency "factory_girl"
end
