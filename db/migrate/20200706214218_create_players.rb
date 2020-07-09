class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :football_club_id 
    end 
  end
end
