class Plant < ActiveRecord::Base
  belongs_to :family
  validates_uniqueness_of :name
  validates_presence_of :name

  def energy
    family.energy
  end
end