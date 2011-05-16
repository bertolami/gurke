require 'test_helper'

class PlantTest < ActiveSupport::TestCase


  test "a plant knows the energy of its family" do
    family = Family.new(:name => "Family" , :energy => "HOCH")
    plant = Plant.new(:name => "Plant")
    plant.family = family

    assert_equal "HOCH", plant.energy

  end
end
