class AddColumnNameToBed < ActiveRecord::Migration
  def self.up
    add_column :beds, :name, :string
  end

  def self.down
    remove_column :beds, :name
  end
end
