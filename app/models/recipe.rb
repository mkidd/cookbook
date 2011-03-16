class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :directions
  
  validates :title, :presence => true
  validates :description, :presence => true
  
  accepts_nested_attributes_for :ingredients, :reject_if => proc { |a| a[:food].blank? }
  #accepts_nested_attributes_for :ingredients, :reject_if => proc { |a| a[:food].blank? }
  #we want to resuse ingredients if possible
  
  accepts_nested_attributes_for :directions
  #accepts_nested_attributes_for :directions, :reject_if => proc { |a| a[:instruction].blank? }, :allow_destroy => true
  #there should not be an issue with deleting directions associated to a deleted recipe
  
  #http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls#Procs
end
