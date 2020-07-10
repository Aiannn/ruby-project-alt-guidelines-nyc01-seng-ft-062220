class FootballClub < ActiveRecord::Base
    has_many :tournament_football_clubs
    has_many :tournaments, through: :tournament_football_clubs
    has_many :player_football_clubs
    has_many :players, through: :player_football_clubs
end 