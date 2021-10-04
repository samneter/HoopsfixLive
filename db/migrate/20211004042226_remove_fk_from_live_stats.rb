class RemoveFkFromLiveStats < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key "live_stats", "games"
  end
end
