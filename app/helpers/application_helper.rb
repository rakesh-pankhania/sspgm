module ApplicationHelper
  def url_with_http(url)
    return url if url.starts_with? 'http://'
    "http://#{url}"
  end
end
