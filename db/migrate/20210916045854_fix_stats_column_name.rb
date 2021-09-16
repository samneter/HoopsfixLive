class FixStatsColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :live_stats, :games_id, :game_id
  end
end
