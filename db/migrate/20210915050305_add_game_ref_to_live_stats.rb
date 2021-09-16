class AddGameRefToLiveStats < ActiveRecord::Migration[6.1]
  def change
    add_reference :live_stats, :games, null: false, foreign_key: true
  end
end
