require 'test_helper'


class PlantTest < ActiveSupport::TestCase
  include PlantsHelper

  test "60 maturity days renders to 2 Monate" do

    assert_equal "2 Monate",  render_maturity_days(60)

  end

  test "62 maturity days renders to 2 Monate" do
    assert_equal "2 Monate",  render_maturity_days(62)
  end

  test "29 maturity days renders to 29 Tage" do
    assert_equal "29 Tage",  render_maturity_days(29)
  end


  test "1. 4. renders to Anfang April" do
    assert_equal "Anfang April", nice_time(4,1)
  end

  test "15. 5. renders to Mitte Mai" do
    assert_equal "Mitte Mai", nice_time(5,15)
  end
  
  test "30. 6. renders to Ende Juni" do
    assert_equal "Ende Juni", nice_time(6,30)
  end

  test "7. renders to Juli" do
    assert_equal "Juli", nice_time(7,nil)
  end

  test "nil renders to unbekannt" do
    assert_equal "unbekannt", nice_time(nil,nil)
  end
end
