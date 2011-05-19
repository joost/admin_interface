require 'rails/generators/resource_helpers'
class AdminScaffoldGenerator < Rails::Generators::NamedBase

  # See: http://railsapi.com/doc/rails-v3.0.7/classes/Rails/Generators/ResourceHelpers.html
  include Rails::Generators::ResourceHelpers
  argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"

  source_root File.expand_path("../templates", __FILE__)

  CONTROLLER_PATH = 'app/controllers/admin'
  # MODEL_PATH = 'app/models/admin'
  VIEW_PATH = 'app/views/admin'

  # default_options :skip_timestamps => false, :skip_migration => false, :force_plural => false

  def controller_plural_name
    @name.pluralize.downcase
  end

  alias_method  :controller_file_name,  :controller_file_name
  alias_method  :controller_table_name, :controller_plural_name

  def create_admin_scaffold
    @name = file_name
    
    if @name == @name.pluralize && !options[:force_plural]
      puts "Plural version of the model detected, using singularized version.  Override with --force-plural."
      @name = @name.singularize
    end

    for action in scaffold_views
      template(
        "view_#{action}.html.erb",
        File.join(VIEW_PATH, controller_class_path, controller_file_name, "#{action}.html.erb")
      )
    end
    template 'view_form_partial.html.erb', File.join(VIEW_PATH, controller_class_path, controller_file_name, "_form.html.erb")

    readme 'INSTALL'
  end

private

  def scaffold_views
    %w[ index show new edit ]
  end

  # def create_admin_scaffold
  #   @name = file_name
  # 
  #   if @name == @name.pluralize && !options[:force_plural]
  #     logger.warning "Plural version of the model detected, using singularized version.  Override with --force-plural."
  #     @name = @name.singularize
  #   end
  # 
  #   @controller_name = @name.pluralize
  # 
  #   base_name, @controller_class_path, @controller_file_path, @controller_class_nesting, @controller_class_nesting_depth = extract_modules(@controller_name)
  #   @controller_class_name_without_nesting, @controller_underscore_name, @controller_plural_name = inflect_names(base_name)
  #   @controller_singular_name=base_name.singularize
  #   if @controller_class_nesting.empty?
  #     @controller_class_name = @controller_class_name_without_nesting
  #   else
  #     @controller_class_name = "#{@controller_class_nesting}::#{@controller_class_name_without_nesting}"
  #   end
  # end
  # 
  # def manifest
  #   # Check for class naming collisions.
  #   # m.class_collisions("Admin::#{controller_class_name}Controller")
  #   # m.class_collisions(class_name)
  # 
  #   # Controller, helper, views, test and stylesheets directories.
  #   # m.directory(File.join('app/models', class_path))
  #   directory(File.join(CONTROLLER_PATH, controller_class_path))
  #   # m.directory(File.join('app/helpers', controller_class_path))
  #   directory(File.join(VIEW_PATH, controller_class_path, controller_file_name))
  #   # m.directory(File.join('app/views/layouts', controller_class_path))
  #   # m.directory(File.join('test/functional', controller_class_path))
  #   # m.directory(File.join('test/unit', class_path))
  #   # m.directory(File.join('test/unit/helpers', class_path))
  #   # m.directory(File.join('public/stylesheets', class_path))
  # 
  #   for action in scaffold_views
  #     template(
  #       "view_#{action}.html.erb",
  #       File.join(VIEW_PATH, controller_class_path, controller_file_name, "#{action}.html.erb")
  #     )
  #   end
  #   template 'view_form_partial.html.erb', File.join(VIEW_PATH, controller_class_path, controller_file_name, "_form.html.erb")
  # 
  #   # Layout and stylesheet.
  #   # m.template('layout.html.erb', File.join('app/views/layouts', controller_class_path, "#{controller_file_name}.html.erb"))
  #   # m.template('style.css', 'public/stylesheets/scaffold.css')
  # 
  #   template(
  #     'controller.rb', File.join(CONTROLLER_PATH, controller_class_path, "#{controller_file_name}_controller.rb")
  #   )
  # 
  #   # m.template('functional_test.rb', File.join('test/functional', controller_class_path, "#{controller_file_name}_controller_test.rb"))
  #   # m.template('helper.rb',          File.join('app/helpers',     controller_class_path, "#{controller_file_name}_helper.rb"))
  #   # m.template('helper_test.rb',     File.join('test/unit/helpers',    controller_class_path, "#{controller_file_name}_helper_test.rb"))
  # 
  #   # m.route_resources controller_file_name
  # 
  #   # m.dependency 'model', [name] + @args, :collision => :skip
  #   
  #   readme 'INSTALL'
  # end
  # 
  # protected
  #   # Override with your own usage banner.
  #   def banner
  #     "Usage: #{$0} scaffold ModelName [field:type, field:type]"
  #   end
  # 
  #   def add_options!(opt)
  #     opt.separator ''
  #     opt.separator 'Options:'
  #     opt.on("--skip-timestamps",
  #            "Don't add timestamps to the migration file for this model") { |v| options[:skip_timestamps] = v }
  #     opt.on("--skip-migration",
  #            "Don't generate a migration file for this model") { |v| options[:skip_migration] = v }
  #     opt.on("--force-plural",
  #            "Forces the generation of a plural ModelName") { |v| options[:force_plural] = v }
  #   end
  # 
  #   def scaffold_views
  #     %w[ index show new edit ]
  #   end
  # 
  #   def model_name
  #     class_name.demodulize
  #   end
end
