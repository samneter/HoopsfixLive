class RemoveFkFromStreams < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key "streams", "games"
  end
end
