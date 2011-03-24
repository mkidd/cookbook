class AddPreptimeAndInactivePrepTimeToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :preptime, :string
    add_column :recipes, :inactive_preptime, :string
  end

  def self.down
    remove_column :recipes, :preptime
    remove_column :recipes, :inactive_preptime
  end
end
