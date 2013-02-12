# Require gems
require 'kaminari' # pagination
require 'ransack' # search
require 'inherited_resources' # simple controllers
require 'simple_form' # simple forms
require 'dynamic_form' # error_messages method
require 'i18n_country_select' # country_select when having country_code attributes in your simple_forms

# Configure Rails 3.x to include assets.
module AdminInterface

  class Engine < ::Rails::Engine
    # Load translations
    I18n.load_path += Dir.glob( File.expand_path("locales/*.{rb,yml}", File.dirname(__FILE__)) )

    # Load helpers
    # FIXME: Does this work correctly with __FILE__ instead of File.dirname(__FILE__)
    config.autoload_paths << File.expand_path("../../../app/helpers", __FILE__)
    # simple_form gem inputs (for country_helper)
    # config.autoload_paths << File.expand_path("../../../app/inputs", __FILE__) # FIXME: this seems to be auto loaded

    # Enabling assets precompiling under rails 3.1
    # See: https://groups.google.com/group/communityengine/browse_thread/thread/7675f6be7320efe2?pli=1
    if Rails.version >= '3.1'
      initializer :assets do |config|
        Rails.application.config.assets.precompile +=
    %w( admin_interface.css admin_interface.jquery.js )
      end
    end 

  end

end
