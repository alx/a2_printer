# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "a2_printer"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Adam"]
  s.date = "2012-04-14"
  s.email = "james@lazyatom.com"
  s.files = ["Gemfile", "test/a2_printer_test.rb", "test/test_helper.rb", "lib/a2_printer.rb", "lib/serial_connection.rb"]
  s.homepage = "http://lazyatom.com"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Sending commands to a small thermal printer"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<serialport>, ["~> 1.0.4"])
      s.add_runtime_dependency(%q<rmagick>, ["~> 2.13.1"])
      s.add_runtime_dependency(%q<rqrencoder>, ["~> 0.1.2"])
      s.add_runtime_dependency(%q<rqrencoder-magick>, ["~> 0.1.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<serialport>, ["~> 1.0.4"])
      s.add_dependency(%q<rmagick>, ["~> 2.13.1"])
      s.add_dependency(%q<rqrencoder>, ["~> 0.1.2"])
      s.add_dependency(%q<rqrencoder-magick>, ["~> 0.1.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<serialport>, ["~> 1.0.4"])
    s.add_dependency(%q<rmagick>, ["~> 2.13.1"])
    s.add_dependency(%q<rqrencoder>, ["~> 0.1.2"])
    s.add_dependency(%q<rqrencoder-magick>, ["~> 0.1.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
