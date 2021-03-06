# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{backbone_rails}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chas Lemley"]
  s.date = %q{2010-11-17}
  s.description = %q{backbone_rails does two things: 1. tell active record to exclude the root element from the to_json response. 2. Adds a class method to ActionController::Base to initialize the backbone.js integration.}
  s.email = %q{chas.lemley@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/backbone_rails.rb",
    "test/helper.rb",
    "test/test_backbone_rails.rb"
  ]
  s.homepage = %q{http://github.com/chaslemley/backbone_rails}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{I am backbone_rails, I make working with backbone.js and rails3 easier.}
  s.test_files = [
    "test/helper.rb",
    "test/test_backbone_rails.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.1"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.1"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_dependency(%q<rails>, [">= 3.0.1"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_dependency(%q<rails>, [">= 3.0.1"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0.1"])
    s.add_dependency(%q<rails>, [">= 3.0.1"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 3.0.1"])
    s.add_dependency(%q<rails>, [">= 3.0.1"])
  end
end

