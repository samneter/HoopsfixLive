class RenameLiveStatsIdToLiveStat < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :live_stats_id, :live_stat_id
  end
end
