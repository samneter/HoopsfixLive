class ChangeLiveStatsUrlToIntegerInGames < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :live_stats_url, "integer"
  end
end
