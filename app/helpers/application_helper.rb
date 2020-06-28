module ApplicationHelper
  def url_with_http(url)
    return url if url.starts_with? 'http://'
    "http://#{url}"
  end

  def active_class_toggle_for(category)
    active = case category
             when :businesses then controller_path == "businesses"
             when :professionals then controller_path == "professionals"
             else false
             end

    active ? "active" : ""
  end
end
