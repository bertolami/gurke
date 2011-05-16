class Plant < ActiveRecord::Base
  belongs_to :family

  def energy
    family.energy
  end
end