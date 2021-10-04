class AddGameReferencesToLiveStats < ActiveRecord::Migration[6.1]
  def change
    add_reference :live_stats, :game
  end
end
