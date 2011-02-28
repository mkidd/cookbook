class Measurement < ActiveRecord::Base
  validates :size, :presence => true
  validates :quantity, :presence => true
end
