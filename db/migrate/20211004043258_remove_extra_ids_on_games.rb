class RemoveExtraIdsOnGames < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :live_stats_id_id, :live_stats_id
    rename_column :games, :stream_id_id, :live_stats_id
  end
end
