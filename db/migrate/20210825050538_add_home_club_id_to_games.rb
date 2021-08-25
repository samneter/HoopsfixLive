class AddHomeClubIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :home_club_id, :integer
  end
end
