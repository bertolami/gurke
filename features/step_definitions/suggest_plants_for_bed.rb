def scan_to_a s
  res = []
  res = s.scan(/\w+/)
  res
end

Given /^a bed "([^"]*)" with field "([^"]*)"$/ do |bed_id, field|
  create_new_bed(field)
end

When /^I ask Gurke for a plant to seed there$/ do
  @suggested_plants = @bed.suggest_plants
end

Then /^Gurke suggests plants "([^"]*)"$/ do |plants|
  @suggested_plants.should eq scan_to_a plants
end
