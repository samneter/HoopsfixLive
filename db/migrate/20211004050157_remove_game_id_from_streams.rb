class RemoveGameIdFromStreams < ActiveRecord::Migration[6.1]
  def change
    remove_column :streams, :game_id
  end
end
