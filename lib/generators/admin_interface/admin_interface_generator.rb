class AdminInterfaceGenerator < Rails::Generators::Base

  source_root File.expand_path("../templates", __FILE__)

  def copy_image_files
    # Images
    # Copy all images to public/images/admin
    admin_image_dir = File.join('public', 'images', 'admin')
    directory('images', admin_image_dir)
  end

  def copy_controller_files
    copy_file("controllers/base_controller.rb", "app/controllers/admin/base_controller.rb")
    copy_file("controllers/resource_controller.rb", "app/controllers/admin/resource_controller.rb")    
  end

  def copy_view_files
    copy_file("views/layout.html.erb", "app/views/layouts/admin.html.erb")
    copy_file("views/index.html.erb", "app/views/admin/index.html.erb")
  end

  def copy_javascript_files
    copy_file("javascripts/jquery.admin.js", "public/javascripts/jquery.admin.js")
  end

  def copy_stylesheet_files
    copy_file("views/admin.css", "public/stylesheets/admin.css")
  end

  def copy_helper_files
    copy_file("helpers/admin_helper.rb", "app/helpers/admin_helper.rb")
  end

  # def add_admin_route
  #   route("namespace :admin do\n    root :to => 'base#index'\n    # resources :some_model do\n    #   delete 'delete_all', :on => :collection\n    # end\n  end")
  # end

  def show_readme
    readme("INSTALL")
  end

end