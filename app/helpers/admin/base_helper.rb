module Admin::BaseHelper

# Following methods are ripped from RedMine but very nice!

  # Overwrites content_for helper to set has_content?.
  def content_for(name, content = nil, &block)
    @has_content ||= {}
    @has_content[name] = true
    super(name, content, &block)
  end

  # Returns if we have content for a specific yield.
  def has_content?(name)
    (@has_content && @has_content[name]) || false
  end

  # Renders flash messages.
  def render_flash_messages
    flash_string = ''
    flash.each do |k,v|
      flash_string << content_tag('div', v, :class => "flash #{k}")
    end
    flash_string.html_safe
  end

# Following are other helper methods.

  def true_false_image(boolean)
    raise ArgumentError, "Expected a Boolean as argument!" unless boolean.is_a?(FalseClass) || boolean.is_a?(TrueClass)
    image_tag("admin/#{boolean}.png")
  end

  # Overwrites l helper.
  # Make the I18n localize method work with nil dates!
  # Attribute must be Date, DateTime or Time object or nil :)
  # Returns '' if attribute is nil.
  def l(time)
    time.nil? ? '' : I18n.l(time)
  end

  # This is a replacement for Ransack's sort_link (https://github.com/ernie/ransack/blob/master/lib/ransack/helpers/form_helper.rb).
  # It works for @search stuff and without @search stuff.
  def order_link(ransack, attribute, options = {})
    ransack ? sort_link(ransack, attribute, options) : attribute.to_s.humanize # FIXME: Model.human_attribute_name("title")
  end

# Following are extra helper for kaminari gem (pagination).
# It shows similar to Redmine.

  # Shows paginate, paginate_info and perinate.
  # Like: '1 2 3 4 5 ... Next › Last » (1-25/4028) | Per page: 25, 50, 100'
  def navigate(collection)
    return if collection.blank?
    html = paginate(collection) + paginate_info(collection) + ' | ' + perinate(collection)
    content_tag(:div, html.html_safe, :class => 'navigation').html_safe
  end

  # Shows pagination info like '(51-75/815)'.
  # Uses I18n 'en.views.pagination_info' translation key.
  def paginate_info(collection)
    return if collection.blank?
    first = collection.offset_value + 1
    last = [collection.offset_value + collection.limit_value, collection.total_count].min
    total = collection.total_count
    html = I18n.t('views.pagination_info', :default => "(%{first}-%{last}/%{total})", :first => number_with_delimiter(first), :last => number_with_delimiter(last), :total => number_with_delimiter(total))
    content_tag(:nav, html.html_safe, :class => 'pagination info').html_safe
  end

  # Shows a 'Per page: 25 50 100'.
  # Uses I18n 'en.views.perinate' translation key.
  def perinate(collection, options = {})
    return if collection.blank?
    options.reverse_merge!(:values => [25, 50, 100])
    page = (collection.offset_value / collection.limit_value).to_i + 1
    html = I18n.t('views.perinate', :default => "Per page: ")
    html += options[:values].collect do |value|
      page = (collection.offset_value / value).to_i + 1 # This makes sure we always show the same first entry
      link_to_if(value != collection.limit_value, value, params.merge(:per => value, :page => page))
    end.join(', ')
    content_tag(:nav, html.html_safe, :class => 'perination').html_safe
  end

end