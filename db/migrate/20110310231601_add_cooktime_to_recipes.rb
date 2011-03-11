class AddCooktimeToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :cooktime, :string
  end

  def self.down
    remove_column :recipes, :cooktime
  end
end
