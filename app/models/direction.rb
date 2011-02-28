class Direction < ActiveRecord::Base
    validates :number, :presence => true
    validates :instruction, :presence => true
    
    def step
      "#{number}.) #{instruction}"
    end
end
