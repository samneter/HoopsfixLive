class AddForeignKeyToStreams < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key "games", "streams", column: "game_id"
  end
end
