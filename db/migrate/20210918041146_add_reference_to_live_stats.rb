class AddReferenceToLiveStats < ActiveRecord::Migration[6.1]
  def change
    remove_column :live_stats, :game_id
    add_reference :live_stats, :game, foreign_key: true
  end
end
