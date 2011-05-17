Given /^I am logged in as "([^"]*)" user$/ do |arg1|
 # do nothing yet
end

Given /^the family "([^"]*)" is already known$/ do |family|
  World.methods.sort
  visit families_path
  response.should contain(family)
end

When /^I create a plant "([^"]*)" with family "([^"]*)"$/ do |name, family_name|
  visit new_plant_path
  fill_in "Name", :with => name
  select family_name, :from => "plant[family_id]"
  click_button "Create Plant"
end

Then /^the newly created plant "([^"]*)" is available for use$/ do |plant|
  response.should contain(plant)
end

Then /^belongs to the family "([^"]*)"$/ do |family|
  response.should contain(family)
end
