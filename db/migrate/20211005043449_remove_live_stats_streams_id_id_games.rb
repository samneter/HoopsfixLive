class RemoveLiveStatsStreamsIdIdGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :live_stats_id_id
    remove_column :games, :stream_id_id
  end
end
