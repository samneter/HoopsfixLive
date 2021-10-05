class RemoveStreamIdIndexFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_index :games, name: "index_games_on_stream_id_id"
  end
end
