class Room < ApplicationRecord

  def self.selectroomsbyfloor (etaz)
    self.where("floor = ?", etaz)
  end
  
end
