class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.references :ingredient
      t.references :direction
      t.string :title
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
