# Configure Rails 3.1 to include assets.
module AdminInterface

  class Engine < ::Rails::Engine
    # Load translations
    I18n.load_path += Dir.glob( File.expand_path("locales/*.{rb,yml}", File.dirname(__FILE__)) )

    # Load helpers
    # FIXME: Does this work correctly with __FILE__ instead of File.dirname(__FILE__)
    config.autoload_paths << File.expand_path("../../../app/helpers", __FILE__)
  end

end
