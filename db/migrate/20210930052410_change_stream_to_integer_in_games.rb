class ChangeStreamToIntegerInGames < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :stream_id, :integer
  end
end
