Given /^the plant "([^"]*)" is already known$/ do |original_name|
  @original_name = original_name
  visit plants_path
  response.should contain(@original_name)
  response.should have_selector( "div[id*=\""+@original_name+"\"]")
end

When /^I rename the plant to "([^"]*)"$/ do |new_name|
  @new_name = new_name
  click_link_within "div[id*=\""+@original_name+"\"]", "Edit"
  fill_in "Name", :with => @new_name
  click_button
end

Then /^the plant is available under the new name$/ do
  response.should contain(@new_name)
  visit plants_path
  response.should contain(@new_name)
end
