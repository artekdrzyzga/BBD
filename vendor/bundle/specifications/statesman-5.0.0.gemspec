# -*- encoding: utf-8 -*-
# stub: statesman 5.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "statesman".freeze
  s.version = "5.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["GoCardless".freeze]
  s.date = "2019-11-11"
  s.description = "A statesman-like state machine library".freeze
  s.email = ["developers@gocardless.com".freeze]
  s.homepage = "https://github.com/gocardless/statesman".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "3.0.9".freeze
  s.summary = "A statesman-like state machine library".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<ammeter>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<gc_ruboconfig>.freeze, ["~> 2.3.9"])
      s.add_development_dependency(%q<mysql2>.freeze, [">= 0.4", "< 0.6"])
      s.add_development_dependency(%q<pg>.freeze, ["~> 0.18"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.2"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.6"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
    else
      s.add_dependency(%q<ammeter>.freeze, ["~> 1.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<gc_ruboconfig>.freeze, ["~> 2.3.9"])
      s.add_dependency(%q<mysql2>.freeze, [">= 0.4", "< 0.6"])
      s.add_dependency(%q<pg>.freeze, ["~> 0.18"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.2"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.1"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.0"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.6"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
    end
  else
    s.add_dependency(%q<ammeter>.freeze, ["~> 1.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<gc_ruboconfig>.freeze, ["~> 2.3.9"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0.4", "< 0.6"])
    s.add_dependency(%q<pg>.freeze, ["~> 0.18"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.1"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.6"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
  end
end
