class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :streams, :games_id, :game_id
  end
end
