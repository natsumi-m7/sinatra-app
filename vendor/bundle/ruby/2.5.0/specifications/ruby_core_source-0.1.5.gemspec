# -*- encoding: utf-8 -*-
# stub: ruby_core_source 0.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby_core_source".freeze
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mark Moseley".freeze]
  s.date = "2011-04-02"
  s.description = "Retrieve Ruby core source files".freeze
  s.email = "mark@fast-software.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README".freeze, "lib/ruby_core_source.rb".freeze]
  s.files = ["LICENSE".freeze, "README".freeze, "lib/ruby_core_source.rb".freeze]
  s.homepage = "http://github.com/mark-moseley/ruby_core_source".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.2".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Retrieve Ruby core source files".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<archive-tar-minitar>.freeze, [">= 0.5.2"])
    else
      s.add_dependency(%q<archive-tar-minitar>.freeze, [">= 0.5.2"])
    end
  else
    s.add_dependency(%q<archive-tar-minitar>.freeze, [">= 0.5.2"])
  end
end
