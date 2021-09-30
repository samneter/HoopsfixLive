class RenameStatsurlToStatsidInGames < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :live_stats_url, :live_stats_id
  end
end
