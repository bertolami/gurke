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
end
