class PlayerFootballClub < ActiveRecord::Base 
    belongs_to :players
    belongs_to :football_clubs 
end 