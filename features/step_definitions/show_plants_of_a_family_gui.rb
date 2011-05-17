When /^I visit the detail view of the family "([^"]*)"$/ do |family_name|
  visit families_path
  click_link "Show"
end

Then /^I see a website containing the plants "([^"]*)"$/ do |plantlist|
  response.should contain(plantlist)
end
