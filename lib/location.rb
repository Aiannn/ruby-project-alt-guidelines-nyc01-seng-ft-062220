class Location < ActiveRecord::Base
    has_many :location_tournaments
    has_many :tournaments, through: :location_tournaments
end 