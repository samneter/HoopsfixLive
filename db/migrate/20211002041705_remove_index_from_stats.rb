class RemoveIndexFromStats < ActiveRecord::Migration[6.1]
  def change
    remove_index :live_stats, name: "index_live_stats_on_game_id"
  end
end
