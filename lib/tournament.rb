class Tournament < ActiveRecord::Base 
    has_many :tournament_players 
    has_many :players, through: :tournament_players 
    has_many :tournament_football_clubs 
    has_many :football_clubs, through: :tournament_football_clubs 
    has_many :location_tournaments
    has_many :locations, through: :location_tournaments
end 