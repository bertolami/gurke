Given /^I am logged in as "([^"]*)" user$/ do |arg1|
  # do nothing yet
end

Given /^the family "([^"]*)" is already known$/ do |family_name|
  family = find_family(family_name)
  family.should contain(family_name)
end

When /^I create a plant "([^"]*)" with family "([^"]*)"$/ do |plant_name, family_name|
  @response = create_new_plant(plant_name, family_name)
end

Then /^the newly created plant "([^"]*)" is available for use$/ do |plant_name|
   @response.should contain(plant_name)
end

Then /^belongs to the family "([^"]*)"$/ do |family|
  @response.should contain(family)
end
