class PlantsOfBed < ActiveRecord::Base
  belongs_to :plant
  belongs_to :bed
end
