class MapController < ApplicationController
before_action :initialize_search
  def bmstuMap
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
  def index
    initialize_search
    handle_search_name
    handle_filters
  end
  def initialize_search
    @rooms = Room.alphabetical
    session[:search_name] ||= params[:search_name]
    session[:filter] = params[:filter]
    params[:filter_option] = nil if params[:filter_option] == ""
    session[:filter_option] = params[:filter_option]
  end

  def handle_search_name
    if session[:search_name]
      @rooms = Room.where("name LIKE ?", "%#{session[:search_name].titleize}%")
      @zones = @zones.where(code: @rooms.pluck(:team))
    else
      @rooms = Room.all
    end
  end
  def handle_filters
    if session[:filter_option] && session[:filter] == "position"
      @rooms = @rooms.where(position: session[:filter_option])
      @zones = @zones.where(code: @rooms.pluck(:team))
    elsif session[:filter_option] && session[:filter] == "team"
      @zones = @zones.where(code: session[:filter_option])
    end
  end
  def clear
      clear_session(:search_name, :filter_name, :filter)
      redirect_to map_path
    end
end
