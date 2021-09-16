class AddGameRefToStreams < ActiveRecord::Migration[6.1]
  def change
    add_reference :streams, :games, null: false, foreign_key: true
  end
end
