
def scan_to_a s
  res = []
  res = s.scan(/\w+/)
  res
end

Given /^A "([^"]*)" name$/ do |plant_name|
  @plant = Plant.find_by_name(plant_name)
end

Then /^The family name is "([^"]*)"$/ do |family_name|
  family_name.should == @plant.family.name
end

Then /^the energy need is "([^"]*)"$/ do |energy|
  energy.should == @plant.energy
end

 
