class RenameStatsStreamsIdId < ActiveRecord::Migration[6.1]
  def change
    rename_index :games, 'live_stats_id_id', 'live_stats'
    rename_index :games, 'stream_id_id', 'stream'
  end
end
