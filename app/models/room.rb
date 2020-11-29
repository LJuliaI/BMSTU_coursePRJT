#require 'json'
class Room < ApplicationRecord
#  attr_accessor :coord, :name, :floor,

  #    def as_json(options={})
  #        {
      #        coord: @coord,
    #          name: @name,
    #          floor: @floor
    #      }
  #    end

  #    def to_json(*options)
  #        as_json(*options).to_json(*options)
  #    end   
  def self.selectroomsbyfloor (etazg)
    self.where("floor = ?", etazg)
  end

end
