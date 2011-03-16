class AddEquivalentToMeasurement < ActiveRecord::Migration
  def self.up
    add_column :measurements, :equivalent, :string
  end

  def self.down
    remove_column :measurements, :equivalent
  end
end
