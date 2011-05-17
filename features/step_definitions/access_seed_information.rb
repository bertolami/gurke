
 

When /^I display the details of "([^"]*)"$/ do |plant|
  visit plants_path
  click_show plant
 
end

Then /^the details page shows "([^"]*)", "([^"]*)", "([^"]*)" and average "([^"]*)"$/ do |seed_from ,seed_to, maturation_time, variation |
  response.should contain seed_from
  response.should contain seed_to
  response.should contain maturation_time
  response.should contain variation
end
