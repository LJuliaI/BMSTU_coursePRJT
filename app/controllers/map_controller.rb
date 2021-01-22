class MapController < ApplicationController

  def bmstuMap
    @allrooms = Room.all
   Zone.routesearch(9,20).each{|zone| puts (zone.id)}
  end
  def  getdata()
    @rooms =  Room.selectroomsbyfloor(params["etaz"].to_i).as_json
      respond_to do |format|
        format.html
        format.json do render json:
          @rooms
        end
      end
  end
  def  search()
    room = Room.find(params["rid"].to_i)
    @rooms =  Room.selectroomsbyfloor(room.floor.to_i).as_json
      respond_to do |format|
        format.html
        format.json do render json:
          {floor:room.floor.to_i, rooms:@rooms, room:room.as_json}
        end
      end
  end

end
