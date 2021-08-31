class RemoveLiveStatsIdFromLiveStats < ActiveRecord::Migration[6.1]
  def change
    remove_column :live_stats, :live_stats_id, :integer
  end
end
