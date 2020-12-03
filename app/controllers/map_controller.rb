class MapController < ApplicationController

  def bmstuMap
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
end
