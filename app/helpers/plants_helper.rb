module PlantsHelper

  include ApplicationHelper
  
  MONTH = ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember']

  def render_maturity_days(days)
    if (not days)
      unknown
    elsif(days < 30)
      "#{days} Tag#{append_plural_e(days)}"
    else
      months =(days / 30).to_i
      "#{months} Monat#{append_plural_e(months)}"
    end
  end

  def render_seed_time(plant)
    from = nice_time(plant.seed_from_month, plant.seed_from_day)
    to = nice_time(plant.seed_to_month, plant.seed_to_day)
    (from == to) ? from : "#{from} bis #{to}"
  end

  def month_from_rendered_seed_time(seed_time_string)
    split =  seed_time_string.split(/\s+/)
    month = split.last
    MONTH.index(month) + 1
  end

  def day_from_rendered_seed_time(seed_time_string)
    split =  seed_time_string.split(/\s+/)
    day = split.first
    if(day.to_i >0)
      day.to_i
    else
      case day
      when "Anfang" then 1
      when "Mitte" then 15
      when "Ende" then 30
      else nil
      end
    end
  end
  def nice_time(month, day)
    if(month and day)
      "#{nice_day_of_month_description(day)} #{MONTH[month-1]}"
    elsif(month)
      MONTH[month-1]
    else
      unknown
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

  def render_variability_in_percent(variability)
    variability ? "#{variability}%" : unknown
  end

  private
  def append_plural_e(number)
    if(number > 1)
      "e"
    else
      ""
    end
  end
end
