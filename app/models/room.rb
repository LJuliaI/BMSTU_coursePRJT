class Room < ApplicationRecord
  def self.selectroomsbyfloor (etazg)  #returns all rooms of the specific floor
    self.where("floor = ?", etazg)
  end
end
