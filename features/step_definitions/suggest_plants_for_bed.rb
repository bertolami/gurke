def scan_to_a s
  res = []
  res = s.scan(/\w+/)
  res
end

Given /^A bed with name "([^"]*)" and field "([^"]*)"$/ do |name, field|
  @name = name
  create_new_bed(name, field)
end

When /^I ask Gurke for a plant to seed there$/ do
  @site_content = show_bed_details(@name)
end

Then /^Gurke suggests plants "([^"]*)"$/ do |expected_plant_names|
  #suggested_plant_names = @suggested_plants.collect { |plants| plants.name }
  #suggested_plant_names.should eq scan_to_a expected_plant_names
  #puts @site_content
  response.should contain(expected_plant_names)

end
