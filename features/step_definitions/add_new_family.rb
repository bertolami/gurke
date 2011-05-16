
Given /^I am logged in as admin user$/ do

end

When /^I create a "([^"]*)" "([^"]*)"$/ do |energy, family|
  visit new_family_path
  fill_in "Name", :with => family
  fill_in "Energy", :with => energy
  click_button "Create Family"
end

Then /^the newly created family "([^"]*)" is available for use$/ do |family|
  visit families_path
  response.should contain(family)
end

