class MapController < ApplicationController

  def bmstuMap
    @rooms2 =  Room.selectroomsbyfloor (2)
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
end
