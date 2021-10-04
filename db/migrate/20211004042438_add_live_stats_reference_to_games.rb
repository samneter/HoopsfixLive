class AddLiveStatsReferenceToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :live_stats_id
    add_reference :games, :stream_id
  end
end
