class RemoveIndexFromStreams < ActiveRecord::Migration[6.1]
  def change
    remove_index :streams, name: "index_streams_on_game_id"
  end
end
