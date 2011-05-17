
Given /^I am logged in as admin user$/ do
end

When /^I create a "([^"]*)" "([^"]*)"$/ do |energy, family|
  create_new_family(family, energy)
end

Then /^the newly created family "([^"]*)" is available for use$/ do |family|
  response = find_family family
  response.should contain family
end