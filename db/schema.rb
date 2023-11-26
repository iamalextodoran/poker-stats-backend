# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_26_184050) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "fee", default: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "first_place_id"
    t.bigint "second_place_id"
    t.index ["first_place_id"], name: "index_games_on_first_place_id"
    t.index ["second_place_id"], name: "index_games_on_second_place_id"
  end

  create_table "participants", force: :cascade do |t|
    t.boolean "rebuy", default: false
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_participants_on_game_id"
    t.index ["player_id"], name: "index_participants_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "players", column: "first_place_id"
  add_foreign_key "games", "players", column: "second_place_id"
  add_foreign_key "participants", "games"
  add_foreign_key "participants", "players"
end
