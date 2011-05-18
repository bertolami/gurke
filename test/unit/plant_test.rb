require 'test_helper'

class PlantTest < ActiveSupport::TestCase


  test "a plant knows the energy of its family" do
    plant = plants(:Spinat)
    assert_equal "Starkzehrer", plant.energy
  end

  test "a plant with no family returns empty string for family name" do
    plant = plants(:Zwiebel)
    plant.family = nil
    assert_equal "", plant.family_name
  end
end
