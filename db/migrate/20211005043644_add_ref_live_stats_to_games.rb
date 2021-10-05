class AddRefLiveStatsToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :live_stats
    add_reference :games, :stream
  end
end
