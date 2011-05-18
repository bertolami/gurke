class Family < ActiveRecord::Base
  attr_accessor :field_state
  has_many :plants
  validates_uniqueness_of :name
  validates_presence_of :name
end
