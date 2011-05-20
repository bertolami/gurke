
  include PlantsHelper

When /^I ask for the harvest time of a "([^"]*)" planted in "([^"]*)"$/ do |plant, seed_time|
  @plant = plant
  @seed_time_month =seed_time.split(/\s+/).last
  @seed_time_days = seed_time.split(/\s+/).first
  show_plant_details(plant)
end

When /^the "([^"]*)" has an average maturity time of "([^"]*)"$/ do |plant, maturity_time_in_month|
  show_plant_details(@plant)
  response.should contain maturity_time_in_month
end

When /^a variation of "([^"]*)"/ do |variation|
  show_plant_details(@plant)
  response.should contain variation
end

Then /^the estimated harvest time is "([^"]*)"$/ do |harvest_time|
  show_plant_details @plant
  select @seed_time_days
  select @seed_time_month
  
  click_button "Berechnen"
  response.should contain harvest_time
end

When /^I want to calculate the harvest time for a "([^"]*)"$/ do |plant|
   @plant = plant
end

Then /^only the months "([^"]*)" can be selected but not e\.g\. "([^"]*)"$/ do |included_month, excluded_month|
  show_plant_details @plant
  included_month.split(/\s+/).each do |incl|
    response.should contain incl
  end
  excluded_month.split(/\s+/).each do |excl|
    response.should_not contain excl
  end
end

Then /^the selected seed time stays at "([^"]*)"$/ do |seed_time|
  seed_day = seed_time.split(/\s+/).first
  seed_month = seed_time.split(/\s+/).last
  #option value="Ende" selected="selected">
  response.should have_selector "option", :value => seed_day, :selected => 'selected'
  response.should have_selector "option", :value => seed_month, :selected => 'selected'
end

