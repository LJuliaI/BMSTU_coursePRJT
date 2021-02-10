class MapController < ApplicationController

  def bmstuMap
    @allrooms = Room.all
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
  def route()
    startzone = Room.find(params["sid"].to_i).zone
    finishzone = Room.find(params["fid"].to_i).zone
    sroom = Room.find(params["sid"].to_i)
    froom = Room.find(params["fid"].to_i)
    respond_to do |format|
      format.html
      format.json do render json:
        {zones:Zone.routesearch(finishzone, startzone).as_json, sroom:sroom.as_json, froom:froom.as_json}
      end
    end
  end

end
