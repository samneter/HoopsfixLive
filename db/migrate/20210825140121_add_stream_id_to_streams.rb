class AddStreamIdToStreams < ActiveRecord::Migration[6.1]
  def change
    add_column :streams, :stream_id, :integer
  end
end
