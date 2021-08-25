class AddLiveStatsIdToLiveStats < ActiveRecord::Migration[6.1]
  def change
    add_column :live_stats, :live_stats_id, :integer
  end
end
