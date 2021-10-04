class RemoveLiveStarsStreamIdFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :live_stats_id
    remove_column :games, :stream_id
    remove_column :games, :competition_id
    remove_column :games, :away_club_id
    remove_column :games, :home_club_id
  end
end
