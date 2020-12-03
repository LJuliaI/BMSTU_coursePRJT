class Room < ApplicationRecord  
  def self.selectroomsbyfloor (etazg)
    self.where("floor = ?", etazg)
  end

end
