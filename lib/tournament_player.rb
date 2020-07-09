class TournamentPlayer < ActiveRecord::Base
    belongs_to :players 
    belongs_to :tournaments 
end 