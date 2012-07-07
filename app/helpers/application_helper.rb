module ApplicationHelper
  
  
  FLASH_TYPES = [:error, :message, :notice]
  
  def display_flash(type = nil)
    html = ""
    if type.nil?
      FLASH_TYPES.each { |name| html << display_flash(name) }
    else
      return flash[type].blank? ? "" : "<div class=\"#{type}\" title=\"Net Worth #{type.to_s.capitalize}   \"><p>#{flash[type]}</p></div>"
    end
      html.html_safe
  end
  
end
