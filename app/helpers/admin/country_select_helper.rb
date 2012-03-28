module Admin::CountrySelectHelper

  # Re-implements country_select methods using the i18n_country_select gem.
  def country_select(object, method, priority_countries = nil, options = {}, html_options = {})
    country_code_select(object, method, priority_countries, options, html_options)
  end

end