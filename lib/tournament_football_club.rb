class TournamentFootballClub < ActiveRecord::Base
    belongs_to :tournaments
    belongs_to :football_clubs
end 