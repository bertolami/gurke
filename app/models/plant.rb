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
end