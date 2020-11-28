class MapController < ApplicationController

  def bmstuMap
  # room = Room.new
#  @viewbox = "0 0 1382.6667 974.66669"
    @rooms = Room.selectroomsbyfloor (2)
  end
#  def  floorBtn(flor)

#      @rooms = Room.selectroomsbyfloor (flor)
#  end
end
