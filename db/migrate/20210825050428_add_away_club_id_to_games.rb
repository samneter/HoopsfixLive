class AddAwayClubIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :away_club_id, :integer
  end
end
