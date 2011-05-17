Given /^the plant "([^"]*)" is already known$/ do |original_name|
  @original_name = original_name
  visit plants_path
  response.should contain(@original_name)
  response.should have_selector( "div[id*=\""+@original_name+"\"]")
end

When /^I rename the plant to "([^"]*)"$/ do |new_name|
  @new_name = new_name
  click_edit  @original_name
  fill_in "Name", :with => @new_name
  click_button
end

Then /^the plant is available under the new name$/ do
  response.should contain(@new_name)
  visit plants_path
  response.should contain(@new_name)
end

When /^I change the family to "([^"]*)"$/ do |new_family_name|
  @new_family_name = new_family_name
  click_edit  @original_name
  select @new_family_name
  click_button
end

Then /^the family of the plant is changed$/ do
  response.should contain @new_family_name
end

Then /^the family contains the newly changed plant$/ do
  visit families_path
  click_show @new_family_name
  response.should contain(@original_name)
end

def click_edit(name)
  click_link_within "div[id*=\""+name+"\"]", "Edit"
end

def click_show(name)
  click_link_within "div[id*=\""+name+"\"]", "Show"
end