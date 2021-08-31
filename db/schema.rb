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

ActiveRecord::Schema.define(version: 2021_08_31_054204) do

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
    t.integer "club_id"
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "competition_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "competition"
    t.string "home_club"
    t.string "away_club"
    t.date "date"
    t.time "tip_time"
    t.string "live_stats_url"
    t.string "stream_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "away_club_id"
    t.integer "home_club_id"
    t.integer "competition_id"
    t.integer "game_id"
  end

  create_table "live_stats", force: :cascade do |t|
    t.string "live_stats_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "game_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.string "competition"
    t.string "club"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "streams", force: :cascade do |t|
    t.string "stream_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "game_id"
  end

end
