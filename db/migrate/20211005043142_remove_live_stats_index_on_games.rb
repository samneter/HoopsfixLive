class RemoveLiveStatsIndexOnGames < ActiveRecord::Migration[6.1]
  def change
    remove_index :games, name: "index_games_on_live_stats_id_id"
  end
end
