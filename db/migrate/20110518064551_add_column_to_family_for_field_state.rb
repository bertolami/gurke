class AddColumnToFamilyForFieldState < ActiveRecord::Migration
  def self.up
    add_column :families, :field_state, :string
  end

  def self.down
    remove_column :families, :field_state
  end
end
