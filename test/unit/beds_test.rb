require 'test_helper'

class BedsTest < ActiveSupport::TestCase
  test "given a bed in state A, suggest plants that fit" do
    bed = Bed.new("A")
    plants = bed.suggest_plants
    assert_equal(%w(Kopfsalat Randen Spinat Zwiebel Rüebli).sort, (plants.collect { |item| item.name }).sort)
  end
end
