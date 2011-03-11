class AddAbbreviationAndMeasurementAndTypeToMeasurement < ActiveRecord::Migration
  def self.up
    add_column :measurements, :abbreviation, :string
    add_column :measurements, :measurement, :string
    add_column :measurements, :measurement_type, :string
  end

  def self.down
    remove_column :measurements, :type
    remove_column :measurements, :measurement
    remove_column :measurements, :abbreviation
  end
end
