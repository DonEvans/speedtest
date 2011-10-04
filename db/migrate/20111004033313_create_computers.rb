class CreateComputers < ActiveRecord::Migration
  def self.up
    create_table :computers do |t|
      t.string :userName
      t.text :description
      t.string :browser
      t.integer :time
      t.string :userAgentString

      t.timestamps
    end
  end

  def self.down
    drop_table :computers
  end
end
