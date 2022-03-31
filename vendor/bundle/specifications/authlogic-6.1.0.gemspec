# -*- encoding: utf-8 -*-
# stub: authlogic 6.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "authlogic".freeze
  s.version = "6.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Johnson".freeze, "Tieg Zaharia".freeze, "Jared Beck".freeze]
  s.date = "2020-05-08"
  s.email = ["bjohnson@binarylogic.com".freeze, "tieg.zaharia@gmail.com".freeze, "jared@jaredbeck.com".freeze]
  s.homepage = "http://github.com/binarylogic/authlogic".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.9".freeze
  s.summary = "An unobtrusive ruby authentication library based on ActiveRecord.".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5.2", "< 6.1"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 5.2", "< 6.1"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.2", "< 6.1"])
      s.add_runtime_dependency(%q<request_store>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<bcrypt>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<byebug>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8.22"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<mysql2>.freeze, ["~> 0.5.2"])
      s.add_development_dependency(%q<pg>.freeze, ["~> 1.1.4"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.80.1"])
      s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<scrypt>.freeze, [">= 1.2", "< 4.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
      s.add_development_dependency(%q<simplecov-console>.freeze, ["~> 0.4.2"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.4.0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.7"])
    else
      s.add_dependency(%q<activemodel>.freeze, [">= 5.2", "< 6.1"])
      s.add_dependency(%q<activerecord>.freeze, [">= 5.2", "< 6.1"])
      s.add_dependency(%q<activesupport>.freeze, [">= 5.2", "< 6.1"])
      s.add_dependency(%q<request_store>.freeze, ["~> 1.0"])
      s.add_dependency(%q<bcrypt>.freeze, ["~> 3.1"])
      s.add_dependency(%q<byebug>.freeze, ["~> 10.0"])
      s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.22"])
      s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
      s.add_dependency(%q<mysql2>.freeze, ["~> 0.5.2"])
      s.add_dependency(%q<pg>.freeze, ["~> 1.1.4"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.80.1"])
      s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.1"])
      s.add_dependency(%q<scrypt>.freeze, [">= 1.2", "< 4.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
      s.add_dependency(%q<simplecov-console>.freeze, ["~> 0.4.2"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.4.0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<activemodel>.freeze, [">= 5.2", "< 6.1"])
    s.add_dependency(%q<activerecord>.freeze, [">= 5.2", "< 6.1"])
    s.add_dependency(%q<activesupport>.freeze, [">= 5.2", "< 6.1"])
    s.add_dependency(%q<request_store>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bcrypt>.freeze, ["~> 3.1"])
    s.add_dependency(%q<byebug>.freeze, ["~> 10.0"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.22"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
    s.add_dependency(%q<mysql2>.freeze, ["~> 0.5.2"])
    s.add_dependency(%q<pg>.freeze, ["~> 1.1.4"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.80.1"])
    s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.1"])
    s.add_dependency(%q<scrypt>.freeze, [">= 1.2", "< 4.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
    s.add_dependency(%q<simplecov-console>.freeze, ["~> 0.4.2"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.4.0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
  end
end
