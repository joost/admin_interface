class AdminInterfaceGenerator < Rails::Generator::Base

  def manifest
    record do |m|

      # Images
      # Copy all images to public/images/admin
      admin_image_dir = File.join('public', 'images', 'admin')
      recursive_copy_templates('images', admin_image_dir, m)

      # Controllers
      m.file "controllers/admin_controller.rb", "app/controllers/admin_controller.rb"

      # Views
      m.directory 'app/views/admin'
      m.file "views/layout.html.erb", "app/views/layouts/admin.html.erb"
      m.file "views/index.html.erb", "app/views/admin/index.html.erb"

      # Javascripts
      m.directory 'public/javascripts'
      m.file "javascripts/jquery.admin.js", "public/javascripts/jquery.admin.js"

      # Stylesheets
      m.directory 'public/stylesheets'
      m.file "views/admin.css", "public/stylesheets/admin.css"

      # Helper
      m.file "helpers/admin_helper.rb", "app/helpers/admin_helper.rb"

      # Routes
      # m.route_name('admin',   '/admin',   {:controller => 'admin'})
      
      # readme
      m.readme 'INSTALL'
    end

  end

private

  # Example:
  #  recursive_copy('images', 'public/images/admin', m)
  def recursive_copy_templates(from_dir, to_dir, m)
    m.directory(to_dir)
    Dir[File.join(File.dirname(__FILE__), 'templates', from_dir, '*')].each do |file|
      file_basename = File.basename(file)
      if File.directory?(file)
        recursive_copy_templates(File.join(from_dir, file_basename), File.join(to_dir, file_basename), m)
      else
        m.file(File.join(from_dir, file_basename), File.join(to_dir, file_basename))
      end
    end
    
  end

end