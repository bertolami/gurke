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
  def create_new_plant(plant_name, family_name)
    visit new_plant_path
    fill_in "Name", :with => plant_name
    select family_name, :from => "plant[family_id]"
    click_button "Create Plant"
  end

  def find_plant(name)
    visit plants_path
    response
  end
  def click_edit(name)
    click_link_within "div[id*=\""+name+"\"]", "Edit"
  end

  def click_show(name)
    click_link_within "div[id*=\""+name+"\"]", "Show"
  end

  def  assert_plant_available name
    visit plants_path
    response.should contain(name)
  end

end
