class MapController < ApplicationController

  def bmstuMap
    @allrooms = Room.all  #all rooms
  end
  def  getdata()
    @rooms =  Room.selectroomsbyfloor(params["etaz"].to_i).as_json  #Returns all rooms of the specific floor
      respond_to do |format|
        format.html
        format.json do render json:
          @rooms                                                    #Send to front
        end
      end
  end
  def  search()                                                     #sends data for search function
    room = Room.find(params["rid"].to_i)                            # return room with id=rid
    @rooms =  Room.selectroomsbyfloor(room.floor.to_i).as_json
      respond_to do |format|
        format.html
        format.json do render json:
          {floor:room.floor.to_i, rooms:@rooms, room:room.as_json}  #send searched room, floor of the searched room and all rooms on that floor
        end
      end
  end
  def route()                                                       #sends data for routebuilding function
    startzone = Room.find(params["sid"].to_i).zone
    finishzone = Room.find(params["fid"].to_i).zone
    sroom = Room.find(params["sid"].to_i)
    froom = Room.find(params["fid"].to_i)
    respond_to do |format|
      format.html
      format.json do render json:
        {zones:Zone.routesearch(finishzone, startzone).as_json, sroom:sroom.as_json, froom:froom.as_json}    #sends first and last room and the route between (all zones between)
      end
    end
  end

end
