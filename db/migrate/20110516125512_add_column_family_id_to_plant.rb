class AddColumnFamilyIdToPlant < ActiveRecord::Migration
  def self.up
    add_column :plants, :family_id, :integer
  end

  def self.down
    remove_column  :plants, :family_id
  end
end
