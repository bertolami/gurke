class Bed < ActiveRecord::Base

  def suggest_plants
    candidates = []
    (Family.find_all_by_field_state self.field_state).each do |family|
      candidates.concat family.plants
    end
    candidates
  end
end
