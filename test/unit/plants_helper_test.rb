require 'test_helper'


class PlantsHelperTest < ActiveSupport::TestCase
  include PlantsHelper

  test "Mitte Juni parsed gives month 6" do
    assert_equal 6,  month_from_rendered_seed_time("Mitte Juni")
  end

  test "Juli parsed gives month 7" do
    assert_equal 7,  month_from_rendered_seed_time("Juli")
  end

  test "Mitte Juni parsed gives day 15" do
    assert_equal 15,  day_from_rendered_seed_time("Mitte Juni")
  end

  test "Anfang Juni parsed gives day 1" do
    assert_equal 1,  day_from_rendered_seed_time("Anfang Juni")
  end


  test "10. Juni parsed gives day 10" do
    assert_equal 10,  day_from_rendered_seed_time("10. Juni")
  end

  test "60 maturity days renders to 2 Monate" do
    assert_equal "2 Monate",  render_maturity_days(60)
  end

  test "62 maturity days renders to 2 Monate" do
    assert_equal "2 Monate",  render_maturity_days(62)
  end

  test "30 maturity days renders to 1 Monat" do
    assert_equal "1 Monat",  render_maturity_days(30)
  end
  
  test "1 maturity day renders to 1 Tag" do
    assert_equal "1 Tag",  render_maturity_days(1)
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

  test "render seed time should render Zwischen <Begin> und <End> if <Begin> and <End> do differ" do
    assert_equal "Anfang April bis Ende Juni", render_seed_time(plants(:ruebli))
  end

  test "render seed time should render <Begin> if <Begin> and <End> do are equal" do
    ruebli = plants(:ruebli)
    ruebli.seed_to_month = ruebli.seed_from_month
    ruebli.seed_to_day = ruebli.seed_from_day 
    assert_equal "Anfang April", render_seed_time(ruebli)
  end

  test "render variability in percent for 10%" do
    assert_equal "10%", render_variability_in_percent(10)
  end
  test "render variability in percent for unknown" do
    assert_equal "unbekannt", render_variability_in_percent(nil)
  end
  test "render variability in percent for 0%" do
    assert_equal "0%", render_variability_in_percent(0)
  end
end
