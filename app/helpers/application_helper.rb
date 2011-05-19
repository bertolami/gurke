

module ApplicationHelper
 MONTH = ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember']

  def to_html_tag(string)
    if string
      s = string.sub(/\s+/, "_").underscore
      replace_umlaute(s)
    else
      a = "string_is_nil"
      puts a
      a
    end

  end

  def replace_umlaute string
    string.gsub(/[ä]/, "ae").gsub(/[ö]/, "oe").gsub(/[ü]/, "ue")
  end

  def month
    MONTH
  end
  def unknown
    "unbekannt"
  end
end
