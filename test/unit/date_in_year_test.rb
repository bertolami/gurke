require 'test_helper'

class DateInYearTest < ActiveSupport::TestCase
  test "initialize" do
    d = DateInYear.new(3, 7)
    assert_equal 3, d.day
    assert_equal 7, d.month
  end

   test "equality" do
    d1 = DateInYear.new(3, 7)
    d2 = DateInYear.new(3, 7)
    assert_equal d1, d2
  end
end