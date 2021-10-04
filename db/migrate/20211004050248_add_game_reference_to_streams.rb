class AddGameReferenceToStreams < ActiveRecord::Migration[6.1]
  def change
    add_reference :streams, :game
  end
end
