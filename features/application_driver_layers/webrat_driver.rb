module WebratLayer

  def create_new_family(family, energy)
    visit new_family_path
    fill_in "Name", :with => family
    fill_in "Energy", :with => energy
    click_button "Create Family"
  end

  def find_family(family_name)
      visit families_path
      response
  end
end
