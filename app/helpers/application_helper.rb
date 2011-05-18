

module ApplicationHelper

  def to_html_tag(string)
    string.sub(/\s+/, "_").underscore
  end
end
