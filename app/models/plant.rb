class Plant < ActiveRecord::Base
  belongs_to :family
  validates_uniqueness_of :name
  validates_presence_of :name

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