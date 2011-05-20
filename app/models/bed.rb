class Bed < ActiveRecord::Base
  has_many :plants_of_beds
  has_many :plants, :through => :plants_of_beds #, :source => bed

  attr_accessor :choosen_plants

  def possible_plants

    candidates = []
    (Family.find_all_by_field_state self.field_state).each do |family|
      candidates.concat family.plants
    end
    candidates
  end
end
