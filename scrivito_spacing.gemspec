$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrivito_spacing/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |gem|
  gem.platform    = Gem::Platform::RUBY
  gem.name        = "scrivito_spacing"
  gem.version     = ScrivitoSpacing::VERSION
  gem.authors     = ["gertimon"]
  gem.email       = ["gert.geidel@infopark.de"]
  gem.homepage    = "https://scrivito.com"
  gem.summary     = "Scrivito Widget for a spacing between Widgets."
  gem.description = "Scrivito Widget for a spacing between Widgets."
  gem.license     = "LGPL-3.0"

  gem.files = Dir[
    "{app,config,db,lib}/**/*",
    "LICENSE",
    "Rakefile",
    "README.rdoc"
  ]

  gem.add_dependency 'bundler'
  gem.add_dependency 'scrivito_sdk'
  gem.add_dependency 'infopark_crm_connector'

  gem.add_development_dependency 'rake'
end
