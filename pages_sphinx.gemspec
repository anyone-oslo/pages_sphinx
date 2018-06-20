# encoding: utf-8

$LOAD_PATH.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "pages_sphinx"
  s.version     = "0.0.4"
  s.authors     = ["Inge Jørgensen"]
  s.email       = ["inge@anyone.no"]
  s.homepage    = "https://github.com/anyone-oslo/pages_sphinx"
  s.summary     = "Sphinx support for Pages"
  s.description = "Adds ThinkingSphinx to Pages"
  s.licenses    = ['MIT']

  s.rubyforge_project = "."

  s.required_ruby_version = ">= 1.9.2"

  s.files = Dir[
    "{app,config,db,lib,vendor}/**/*",
    "Rakefile",
    "README.md"
  ]

  s.add_development_dependency "mysql2", "~> 0.4.2"
  s.add_development_dependency "pg", "~> 0.18.3"
  s.add_development_dependency "rspec-rails", "~> 3.5", ">= 3.5.1"
  s.add_development_dependency "factory_girl", "~> 4.5", ">= 4.5.0"
  s.add_development_dependency "shoulda-matchers", "~> 3.1", ">= 3.1.0"

  s.add_dependency "rails", ">= 4.2.0", "< 5.3.0"
  s.add_dependency "thinking-sphinx", "~> 3.2", ">= 3.2.0"
end
