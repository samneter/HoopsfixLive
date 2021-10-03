class RemoveClubIdFromCompetitions < ActiveRecord::Migration[6.1]
  def change
    remove_column :competitions, :club_id
  end
end
