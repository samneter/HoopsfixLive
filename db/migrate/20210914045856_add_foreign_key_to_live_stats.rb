class AddForeignKeyToLiveStats < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key "games", "live_stats", column: "game_id"
  end
end
