class MapController < ApplicationController
  def bmstuMap
  #  room = Room.new
    @rooms = Room.selectroomsbyfloor (2)
  end
end
