class RemoveAwayClubFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :away_club, :string
  end
end
