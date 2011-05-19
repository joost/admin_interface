# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devise/version"

Gem::Specification.new do |s|
  s.name = "admin_interface"
  s.version = '1.0.0'
  s.platform = Gem::Platform::RUBY
  s.summary = "A Rails admin interface generator. Theme stolen from Redmine."
  s.email = "joost@joopp.com"
  s.homepage = "http://github.com/joost/admin_interface"
  s.description = "A Rails admin interface generator. Theme stolen from Redmine. Similar to web-app-theme."
  s.authors = ['Joost Hietbrink']

  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end