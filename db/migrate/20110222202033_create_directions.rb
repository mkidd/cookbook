class CreateDirections < ActiveRecord::Migration
  def self.up
    create_table :directions do |t|
      t.references :recipe
      t.integer :number
      t.text :instruction

      t.timestamps
    end
  end

  def self.down
    drop_table :directions
  end
end
