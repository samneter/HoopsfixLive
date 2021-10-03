class RemoveClubIdReferenceFromCompetitions < ActiveRecord::Migration[6.1]
  def change
    remove_index :competitions, name: "index_competitions_on_club_id"
  end
end
