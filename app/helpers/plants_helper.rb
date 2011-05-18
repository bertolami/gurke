module PlantsHelper
  MONTH = ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember']
  def nice_time(month, day)
    if(month and day)
      "#{nice_day_of_month_description(day)} #{MONTH[month-1]}"
    elsif(month)
      MONTH[month-1]
    else
      "unbekannt"
    end
  end

  def nice_day_of_month_description(day)
    if(day < 10)
      "Anfang"
    elsif (day <= 20)
      "Mitte"
    else
      "Ende"
    end
  end
end
