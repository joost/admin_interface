# Simple Form gem custom input (see: https://github.com/plataformatec/simple_form).
#
# Usage (in your simple_form):
#   <%= form.input :country_code, :as => :country_code %> 
#
class CountryCodeInput < SimpleForm::Inputs::Base
  def input
    @builder.country_code_select(attribute_name, input_options.delete(:priority) || SimpleForm.country_priority, input_html_options) #, priority_countries, options)
  end
end