class AddColumnsForSeedInformationToPlants < ActiveRecord::Migration
  def self.up
    add_column :plants, :seed_from_month, :integer
    add_column :plants, :seed_from_day, :integer
    add_column :plants, :seed_to_month, :integer
    add_column :plants, :seed_to_day, :integer
    add_column :plants, :maturity_time_in_days, :integer
    add_column :plants, :variability_in_percent, :integer
  end

  def self.down
    remove_column :plants, :seed_from_month
    remove_column :plants, :seed_from_day
    remove_column :plants, :seed_to_month
    remove_column :plants, :seed_to_day
    remove_column :plants, :maturity_time_in_days
    remove_column :plants, :variability_in_percent
  end
end
