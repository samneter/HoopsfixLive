class RemoveGameIdFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :game_id, :integer
  end
end
