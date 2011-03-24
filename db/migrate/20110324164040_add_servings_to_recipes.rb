class AddServingsToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :servings, :string
  end

  def self.down
    remove_column :recipes, :servings
  end
end
