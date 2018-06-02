# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'simplest_auth/version'

Gem::Specification.new do |s|
  s.name = %q{simplest_auth}
  s.version = SimplestAuth::Version.to_s

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Pitale"]
  s.email = %q{tpitale@gmail.com}
  s.homepage = %q{http://github.com/tpitale/simplest_auth}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple implementation of authentication for Rails}
  s.files              = `git ls-files`.split("\n") rescue ''
  s.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bcrypt>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, ["0.8.7"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<activemodel>, [">= 0"])
    else
      s.add_dependency(%q<bcrypt>, ["~> 2.1.1"])
      s.add_dependency(%q<rake>, ["0.8.7"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 0"])
    end
  else
    s.add_dependency(%q<bcrypt>, ["~> 2.1.1"])
    s.add_dependency(%q<rake>, ["0.8.7"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 0"])
  end
end
