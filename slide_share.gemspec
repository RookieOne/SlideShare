# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "slide_share/version"

Gem::Specification.new do |s|
  s.name        = "slide_share"
  s.version     = SlideShare::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jonathan Birkholz"]
  s.email       = ["rookieone@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/slide_share"
  s.summary     = %q{Gem for SlideShare using HTTParty}
  s.description = %q{Gem for SlideShare using HTTParty}

  s.rubyforge_project = "slide_share"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "httparty"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
