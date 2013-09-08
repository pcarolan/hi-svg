$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hi/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hi"
  s.version     = Hi::VERSION
  s.authors     = ["Pat Carolan"]
  s.email       = ["patrick.carolan@gmail.com"]
  s.homepage    = ""
  s.summary     = "A human interface for rails."
  s.description = "Design your apps using SVG."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
