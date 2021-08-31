class RemoveStreamIdFromStreams < ActiveRecord::Migration[6.1]
  def change
    remove_column :streams, :stream_id, :integer
  end
end
