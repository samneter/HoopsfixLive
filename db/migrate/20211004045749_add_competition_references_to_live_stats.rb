class AddCompetitionReferencesToLiveStats < ActiveRecord::Migration[6.1]
  def change
    remove_column :live_stats, :game_id
  end
end
