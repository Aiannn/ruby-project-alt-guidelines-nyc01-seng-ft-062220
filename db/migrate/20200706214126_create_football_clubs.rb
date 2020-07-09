class CreateFootballClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :football_clubs do |t|
      t.string :name
    end 
  end
end
