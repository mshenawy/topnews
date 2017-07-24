module ApplicationHelper

	def link_to_in_li(body, url, html_options = {})
  active = "nav-link" if current_page?(url)
  content_tag :a, class: active do
    link_to body, url, html_options
  end
end

end
