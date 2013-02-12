# Simple Form gem custom input (see: https://github.com/plataformatec/simple_form).
#
# Usage (in your simple_form):
#   <%= form.input :country_code, :as => :country_code %> 
#
# In your SimpleForm config add:
#   config.country_priority = ['', 'NL', 'BE', 'DE', 'FR', 'IT', 'GB', 'US', 'AU']
#
class CountryCodeInput < SimpleForm::Inputs::Base
  def input
    priority_countries = input_options.delete(:priority) || SimpleForm.country_priority.clone
    if not priority_countries.first.is_a?(Array)
      # We allow setting priority_countries by using only code..
      priority_countries.collect! { |code| [I18n.t(code.to_sym, :scope => :countries), code]}
    end
    @builder.country_code_select(attribute_name, priority_countries, input_html_options) #, priority_countries, options)
  end
end