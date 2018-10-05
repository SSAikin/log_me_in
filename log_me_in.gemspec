$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "log_me_in/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
    s.name        = "log_me_in"
    s.version     = LogMeIn::VERSION
    s.authors     = ["Eduardo Sabino"]
    s.email       = ["eduardoaikin@gmail.com"]
    s.homepage    = "https://github.com/SSAikin/log_me_in"
    s.summary     = "Summary of LogMeIn."
    s.description = "This gem has will control the validation of users"

    s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
    s.test_files = Dir["test/**/*"]

    s.add_dependency "rails", "~> 3.2.22.5"

    s.add_development_dependency "sqlite3"
    s.add_development_dependency "pry"
    s.add_development_dependency "pry-remote"
    s.add_development_dependency "pry-nav"
    s.add_development_dependency "coveralls"
end
