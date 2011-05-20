class CreatePlantsOfBeds < ActiveRecord::Migration
  def self.up
    create_table :plants_of_beds do |t|
      t.integer :plant_id
      t.integer :bed_id
      t.float :amount
      t.timestamps
    end
  end

  def self.down
    drop_table :plants_of_beds
  end
end
