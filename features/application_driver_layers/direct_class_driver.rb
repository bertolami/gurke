module DirectClassDriver

  include ApplicationHelper

  def create_new_family(family, energy)
  end

  def find_family(family_name)
  end
  
  def create_new_plant(plant_name, family_name)
  end

  def find_plant(name)
  end

  #go to edit page
  def click_edit(the_name)
  end

  def click_show(the_name)
  end

  def rename_plant(original_name, new_name)
  end

  def rename_family(original_name, new_name)
  end

  def show_family_details(the_name)
  end

  def show_plant_details(the_name)
  end

  def assign_to_other_family(plant_name, new_family_name)
  end

  def create_new_bed(field_state)
    bed = Bed.new(:field_state => field_state)
    bed.save
    bed
  end
end
