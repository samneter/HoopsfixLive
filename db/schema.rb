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

ActiveRecord::Schema.define(version: 2021_10_24_043511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "youtube"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "tiktok"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_clubs_on_name"
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_competitions_on_name"
  end

  create_table "games", force: :cascade do |t|
    t.date "date", null: false
    t.time "tip_time", null: false
    t.bigint "competitions_id", null: false
    t.integer "home_club_id", null: false
    t.integer "away_club_id", null: false
    t.string "live_stat_url"
    t.string "stream_url", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["away_club_id"], name: "index_games_on_away_club_id"
    t.index ["competitions_id"], name: "index_games_on_competitions_id"
    t.index ["home_club_id"], name: "index_games_on_home_club_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "clubs_id", null: false
    t.bigint "competitions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clubs_id"], name: "index_memberships_on_clubs_id"
    t.index ["competitions_id"], name: "index_memberships_on_competitions_id"
  end

  add_foreign_key "games", "competitions", column: "competitions_id"
  add_foreign_key "memberships", "clubs", column: "clubs_id"
  add_foreign_key "memberships", "competitions", column: "competitions_id"
end
