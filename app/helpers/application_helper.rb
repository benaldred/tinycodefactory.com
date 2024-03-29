module ApplicationHelper
  def body_class
    body_class = "#{controller.controller_name} #{controller.action_name}"
    body_class << " #{params[:id]}" if controller.controller_name == "pages"
    body_class
  end

  def nav_li(title)
    href = "##{title.downcase.parameterize('_')}"
    href = "/#{href}" if controller.controller_name != "pages"
    "<li><a href='#{href}'>#{title}</a></li>".html_safe
  end
end
