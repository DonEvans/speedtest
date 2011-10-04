class AddFieldsToComputers < ActiveRecord::Migration
  def self.up
    add_column :computers, :category, :string
  end

  def self.down
    remove_column :computers, :category
  end
end
