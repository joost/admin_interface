# encoding: UTF-8
require 'rubygems'

# Jeweler Gem stuff
begin
  require 'jeweler'
  require './lib/admin_interface/version.rb'
  Jeweler::Tasks.new do |gem|

    gem.name = "admin_interface"
    gem.version = AdminInterface::Version::STRING
    gem.summary = "A Rails admin interface generator. Theme stolen from Redmine."
    gem.files = Dir["{lib}/**/*", "{app}/**/*", "{config}/**/*"] # FIXME: `git ls-files`.split("\n")
    # other fields that would normally go in your gemspec
    # like authors, email and has_rdoc can also be included here
    gem.authors = 'Joost Hietbrink'
    gem.description = "A Rails admin interface generator. Theme stolen from Redmine. Similar to web-app-theme but better ;)."

    gem.add_dependency('kaminari', '>= 0.12.4') # Pagination
    gem.add_dependency('ransack') # Search
    gem.add_dependency('inherited_resources', '>= 1.2.2') # Simple controllers
    # gem.add_dependency('dynamic_form')
    gem.add_dependency('simple_form') # Simple forms

  end
rescue
  puts "Jeweler or one of its dependencies is not installed."
end
