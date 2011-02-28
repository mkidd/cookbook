class Ingredient < ActiveRecord::Base
  has_one :measurement
  validates :measurement, :presence => true
  validates :quantity, :presence => true
  validates :food, :presence => true
end
