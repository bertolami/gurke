class Family < ActiveRecord::Base
  has_many :plants
  validates_uniqueness_of :name
  validates_presence_of :name
end
