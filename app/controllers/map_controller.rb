class MapController < ApplicationController
  def bmstuMap
  #  room = Room.new
    @rooms = Room.selectroomsbyfloor (2)
    puts (Zone.routesearch(2,23))
  end
end
