class Ingredient < ActiveRecord::Base
  has_one :measurement
  belongs_to :recipe
  #validates :measurement, :presence => true
  #validates :quantity, :presence => true
  #validates :food, :presence => true
  
  accepts_nested_attributes_for :measurement
end
