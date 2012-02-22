# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |spec|
  spec.name = "admin_interface"
  spec.version = '1.4.2'
  spec.platform = Gem::Platform::RUBY
  spec.summary = "A Rails admin interface generator. Theme stolen from Redmine."
  spec.email = "joost@joopp.com"
  spec.homepage = "http://github.com/joost/admin_interface"
  spec.description = "A Rails admin interface generator. Theme stolen from Redmine. Similar to web-app-theme but better ;)."
  spec.authors = ['Joost Hietbrink']

  # kaminari (pagination), ransack (search), inherited_resources (coolness)
  spec.add_dependency('kaminari', '>= 0.12.4')
  spec.add_dependency('ransack')
  spec.add_dependency('inherited_resources', '>= 1.2.2')

  spec.files = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]
end