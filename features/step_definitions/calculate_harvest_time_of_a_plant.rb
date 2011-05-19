
  include PlantsHelper

When /^I ask for the harvest time of a "([^"]*)" planted in "([^"]*)"$/ do |plant, seed_time|
  @plant = plant
  @seed_time_month = month_from_rendered_seed_time seed_time
  @seed_time_day = day_from_rendered_seed_time seed_time
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
  pending # express the regexp above with the code you wish you had
end
