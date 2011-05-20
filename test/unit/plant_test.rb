require 'test_helper'

class PlantTest < ActiveSupport::TestCase


  test "a plant knows the energy of its family" do
    plant = plants(:Spinat)
    assert_equal "starkzehrend", plant.energy
  end

  test "a plant with no family returns empty string for family name" do
    plant = plants(:Zwiebel)
    plant.family = nil
    assert_equal "", plant.family_name
  end

  test "calculate average harvest time of ruebli" do
    plant = plants(:ruebli)
    average_harvest_time = plant.calculate_average_harvest_time(DateInYear.new(1,4))
    assert_equal DateInYear.new(1,6), average_harvest_time
  end

  test "calculate minimal harvest time of ruebli" do
    plant = plants(:ruebli)
    average_harvest_time = plant.calculate_minimum_harvest_time(DateInYear.new(1,4))
    assert_equal DateInYear.new(25,5), average_harvest_time
  end
  test "calculate maximum harvest time of ruebli" do
    plant = plants(:ruebli)
    average_harvest_time = plant.calculate_maximum_harvest_time(DateInYear.new(1,4))
    assert_equal DateInYear.new(7,6), average_harvest_time
  end
end
