class Player < ActiveRecord::Base
    has_many :tournament_players 
    has_many :tournaments, through: :tournament_players
    has_many :player_football_clubs 
    has_many :football_clubs, through: :player_football_clubs
end 