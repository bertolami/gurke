class AddColumnsIdAndFieldToBeds < ActiveRecord::Migration
  def self.up
    add_column :beds, :field_state, :string
  end

  def self.down
    remove_column :beds, :field_state
  end
end
