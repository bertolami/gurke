module WebratLayer
  include ApplicationHelper

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

  #go to edit page
  def click_edit(the_name)
    response.should contain the_name
    click_link_within "div[id*=\""+to_html_tag(the_name)+"\"]", "Edit"
  end

  def click_show(the_name)
    click_link_within "div[id*=\""+to_html_tag(the_name)+"\"]", "Show"
  end

  def rename_plant(original_name, new_name)
    click_edit  original_name
    fill_in "Name", :with => new_name
    click_button
  end

  def rename_family(original_name, new_name)
    visit families_path
    click_edit  original_name
    select new_name
    click_button
  end

  def show_family_details(the_name)
    visit families_path
    click_show the_name
  end
end
