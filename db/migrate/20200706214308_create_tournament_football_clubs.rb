class CreateTournamentFootballClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :tournament_football_clubs do |t|
      t.integer :football_club_id 
      t.integer :tournament_id 
    end 
  end
end
