class AddIngredientIdToMeasurement < ActiveRecord::Migration
  def self.up
    change_table :measurements do |t|
      t.references :ingredient
    end
  end

  def self.down
  end
end
