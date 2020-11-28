class MapController < ApplicationController

  def bmstuMap
  # room = Room.new
#  @viewbox = "0 0 1382.6667 974.66669"
    @rooms2 = Room.selectroomsbyfloor (2)
    @rooms3 = Room.selectroomsbyfloor (3)
  end
#  def  floorBtn(flor)

#      @rooms = Room.selectroomsbyfloor (flor)
#  end
end
