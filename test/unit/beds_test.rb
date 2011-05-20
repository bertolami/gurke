require 'test_helper'

class BedsTest < ActiveSupport::TestCase
  test "given a bed in state A, suggest plants that fit" do
    bed = beds(:rechts_A)
    plants = bed.suggest_plants
    assert_equal(%w(Zwiebel Rüebli).sort, (plants.collect { |item| item.name }).sort)
  end

  test "A bed has plants" do
    bed = beds(:rechts_A)
    assert_equal(%w(Zwiebel Rüebli).sort, (bed.plants.collect{ |item| item.name }).sort)
  end

  test "A bed can add plants" do
    bed = beds(:unten_C)
    assert_equal FieldState::C.id, bed.field_state, "field_state must be C"
    assert_equal(%w(Randen).sort, (bed.plants.collect{ |item| item.name }).sort)
    assert_equal 1, bed.plants.size
    bed.plants << plants(:Spinat)
    assert_equal 2, bed.plants.size
    assert_equal(%w(Randen Spinat).sort, (bed.plants.collect{ |item| item.name }).sort)
  end

end
