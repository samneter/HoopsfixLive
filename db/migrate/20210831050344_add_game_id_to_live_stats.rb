class AddGameIdToLiveStats < ActiveRecord::Migration[6.1]
  def change
    add_column :live_stats, :game_id, :integer
  end
end
