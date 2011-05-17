Given /^I am logged in as user$/ do
  # ignored
end

When /^I open the homepage$/ do
  visit "/"
end

Then /^I see a link to the "([^"]*)" that goes to "([^"]*)"$/  do |link_name, link_target|
  response.should contain link_name
  response.should have_selector("a[href*=\"#{link_target}\"]")
end
