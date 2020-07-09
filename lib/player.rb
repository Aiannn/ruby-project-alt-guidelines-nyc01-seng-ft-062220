class Player < ActiveRecord::Base
    belongs_to :football_clubs
    has_many :tournament_players 
    has_many :tournaments, through: :tournament_players
end 