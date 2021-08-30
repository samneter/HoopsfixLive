class AddGameIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :game_id, :integer
  end
end
