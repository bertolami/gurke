def scan_to_a s
  res = []
  res = s.scan(/\w+/)
  res
end

Given /^a "([^"]*)" name$/ do |family_name|
  @family = Family.find_by_name(family_name)
end

Then /^the plants are "([^"]*)"$/ do |merged_plants|
  # Split the serialized plants and check each for inclusion in family
  (scan_to_a merged_plants).each do |split_plant|
    # Must find each of the plants in the family
    found = false
    # Check each plant of the family
    @family.plants.each do |family_plant|
      if family_plant.name eq split_plant then
        found = true
      end
    end
    # If no match was found, abort
    found.should == true
  end
end
