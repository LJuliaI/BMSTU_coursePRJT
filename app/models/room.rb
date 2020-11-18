class Room < ApplicationRecord
  belongs_to :zone
  def self.selectroomsbyfloor (etaz)
    self.where("floor = ?", etaz)
  end
end
