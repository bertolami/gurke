Given /^the plant "([^"]*)" is already known$/ do |original_name|
  @original_name = original_name
  @response = find_plant original_name
  @response.should contain original_name
end

When /^I rename the plant to "([^"]*)"$/ do |new_name|
  @new_name = new_name
  @response = rename_plant(@original_name, @new_name)
end

Then /^the plant is available under the new name$/ do
  @response.should contain(@new_name)
  @response = find_plant(@new_name)
  @response.should contain(@new_name)
end

When /^I change the family from "([^"]*)" to "([^"]*)"$/ do |original_family_name, new_family_name|
  @original_family_name = original_family_name
  @new_family_name = new_family_name
 #click_edit  @original_name
  #select @new_family_name
  #@response = click_button
  @response = rename_family(@original_family_name, @new_family_name)
end

Then /^the family of the plant is changed$/ do
  @response.should contain @new_family_name
end

Then /^the family contains the newly changed plant$/ do
  visit families_path
  @response = click_show @new_family_name
  #response = show_family_details(@new_family_name)
  @response = response.should contain(@original_name)
end

Then /^the old family does not contains the newly changed plant anymore$/ do
  visit families_path
  @response = click_show @original_family_name
  #response = show_family_details(@original_family_name)
  @response = response.should_not contain @original_name
end

