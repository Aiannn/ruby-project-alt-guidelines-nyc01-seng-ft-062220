class FootballClub < ActiveRecord::Base
    has_many :players 
    has_many :tournament_football_clubs
    has_many :tournaments, through: :tournament_football_clubs
end 