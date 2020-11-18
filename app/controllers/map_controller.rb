class MapController < ApplicationController
  def bmstuMap
  #  room = Room.new
    @rooms = Room.selectroomsbyfloor (2)
    Zone.routesearch(2,3)
  end
end
