class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :directions
  
  validates :title, :presence => true
  validates :description, :presence => true
end
