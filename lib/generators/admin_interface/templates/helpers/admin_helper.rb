module AdminHelper

  # Following methods are ripped from RedMine but very nice!

  def content_for(name, content = nil, &block)
    @has_content ||= {}
    @has_content[name] = true
    super(name, content, &block)
  end

  def has_content?(name)
    (@has_content && @has_content[name]) || false
  end

  # Renders flash messages
  def render_flash_messages
    flash_string = ''
    flash.each do |k,v|
      flash_string << content_tag('div', v, :class => "flash #{k}")
    end
    flash_string.html_safe
  end

end