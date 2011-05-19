class Plant < ActiveRecord::Base
  belongs_to :family
  validates_uniqueness_of :name
  validates_presence_of :name

  validates :seed_from_month, :inclusion => { :in => 1..12 , :message => "gültige Monate: von 1 - 12"}
  validates :seed_to_month, :inclusion => { :in => 1..12 , :message => "gültige Monate: von 1 - 12"}
  validates :seed_from_day, :inclusion => { :in => 1..31 , :message => "gültige Monate: von 1 - 31" , :allow_nil => true}
  validates :seed_to_day, :inclusion => { :in => 1..31 , :message => "gültige Monate: von 1 - 31", :allow_nil => true}
  def energy
    if family
      family.energy
    else
      ""
    end
  end

  def family_name
    if family
      family.name
    else
      ""
    end
  end

  

  def calculate_average_harvest_time(seed_date_in_year)
    calculate_average_harvest_time_with_maturity_time(seed_date_in_year, self.maturity_time_in_days)
  end

  def calculate_minimum_harvest_time(seed_date_in_year)
    calculate_average_harvest_time_with_maturity_time(seed_date_in_year, self.maturity_time_in_days * 0.9)
  end
  def calculate_maximum_harvest_time(seed_date_in_year)
    calculate_average_harvest_time_with_maturity_time(seed_date_in_year, self.maturity_time_in_days * 1.1)
  end

  private

  def calculate_average_harvest_time_with_maturity_time(seed_date_in_year, maturity_time)
    if(maturity_time)
      maturity_month = (maturity_time / 30).to_i
      maturity_day = (maturity_time % 30).to_i
      DateInYear.new((seed_date_in_year.day + maturity_day) % 30,
        (((seed_date_in_year.day + maturity_day) / 30) +
            seed_date_in_year.month + maturity_month)% 12)
    else
      nil
    end
  end
end