require 'test_helper'
require 'app/helpers/application_helper'

class ApplicationHelperTest < ActiveSupport::TestCase
  include ApplicationHelper
  test "given a string with spaces should changed to a string with underscore" do
    original_string = "my string"
    expected_string = "my_string"
    assert_equal(expected_string, to_html_tag(original_string))
  end
  test "given a camelCase string is changed to string with underscores" do
    original_string = "myString"
    expected_string = "my_string"
    assert_equal(expected_string, to_html_tag(original_string))
  end
   test "given a string with umlauts and spaces should changed to a string with underscore" do
    original_string = "Gurke grün"
    expected_string = "gurke_gruen"
    assert_equal(expected_string, to_html_tag(original_string))
  end

  test "given a string with umlaute all umlaut are replaced" do
    given = "üsch bin doch nicht blöd, männ!"
    expected = "uesch bin doch nicht bloed, maenn!"
    assert_equal expected, replace_umlaute(given)
  end

  test "given a string with two same umlaute both are replaced" do
    given = "üsch bin doch nicht blüd, mann!"
    expected = "uesch bin doch nicht blued, mann!"
    assert_equal expected, replace_umlaute(given)
  end
end
