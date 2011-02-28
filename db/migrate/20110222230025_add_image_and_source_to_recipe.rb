class AddImageAndSourceToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :source, :string
    add_column :recipes, :image, :string
  end

  def self.down
    remove_column :recipes, :image
    remove_column :recipes, :source
  end
end
