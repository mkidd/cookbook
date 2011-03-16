class Direction < ActiveRecord::Base
    belongs_to :recipe
  
    validates :number, :presence => true
    validates :instruction, :presence => true
    
    def step
      "#{number}.) #{instruction}"
    end
end
