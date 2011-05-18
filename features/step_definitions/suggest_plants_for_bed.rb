def scan_to_a s
  res = []
  res = s.scan(/\w+/)
  res
end

Given /^a bed "([^"]*)" with field "([^"]*)"$/ do |bed, field|
  @state = field
end

When /^I ask Gurke for a plant to seed there$/ do

end

Then /^Gurke suggests plants "([^"]*)"$/ do |plants|
  candidates = []
  # Loop through all families with correct field state and retrieve the plants
  (Family.find_all_by_field_state @state).each do |family|
    family.plants.each do |plant|
      candidates.concat [plant.name]
    end
  end
  # Check if the retrieved plants are suitable for the given field type
  candidates.should eq scan_to_a plants
end
