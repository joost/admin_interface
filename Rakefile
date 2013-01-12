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
    # gem.files = Dir["{lib}/**/*", "{app}/**/*", "{config}/**/*"] # FIXME: The git line below is better?!
    gem.files = `git ls-files`.split("\n")
    # other fields that would normally go in your gemspec
    # like authors, email and has_rdoc can also be included here
    gem.authors = 'Joost Hietbrink'
    gem.email = 'joost@joopp.com'
    gem.homepage = 'https://github.com/joost/admin_interface'
    gem.description = "A Rails admin interface generator. Theme stolen from Redmine. Similar to web-app-theme but better ;)."

    gem.add_dependency('kaminari', '>= 0.12.4') # pagination
    gem.add_dependency('ransack') # search # TODO: Use latest ransack version to overcome "undefined method `table_aliases'" error (see: https://github.com/aka47/ransack/commit/ca5e404ace9e4f2f3feb8e3c9a225db46b3393c3)
    gem.add_dependency('inherited_resources', '> 1.2.2') # simple controllers
    gem.add_dependency('simple_form') # simple forms
    gem.add_dependency('country_code_select') # country_code_select (similar to country_select gem) used when having country_code attributes in your simple_forms
    gem.add_dependency('dynamic_form') # error_messages method

  end
rescue
  puts "Jeweler or one of its dependencies is not installed."
end
