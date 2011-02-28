class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.references :measurement
      t.string :quantity
      t.string :food

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end
