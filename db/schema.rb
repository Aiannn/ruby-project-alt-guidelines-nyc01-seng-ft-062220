# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_06_214334) do

  create_table "football_clubs", force: :cascade do |t|
    t.string "name"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "football_club_id"
  end

  create_table "tournament_football_clubs", force: :cascade do |t|
    t.integer "football_club_id"
    t.integer "tournament_id"
  end

  create_table "tournament_players", force: :cascade do |t|
    t.integer "tournament_id"
    t.integer "player_id"
    t.integer "player_goals"
    t.integer "player_assists"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
  end

end
