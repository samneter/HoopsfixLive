class RemoveHomeClubFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :home_club, :string
  end
end
