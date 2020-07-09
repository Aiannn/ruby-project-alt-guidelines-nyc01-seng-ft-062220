class CreateTournamentPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :tournament_players do |t|
      t.integer :tournament_id
      t.integer :player_id 
      t.integer :player_goals
      t.integer :player_assists
    end 
  end
end
