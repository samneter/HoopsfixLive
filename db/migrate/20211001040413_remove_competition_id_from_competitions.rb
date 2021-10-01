class RemoveCompetitionIdFromCompetitions < ActiveRecord::Migration[6.1]
  def change
    remove_column :Competitions, :competition_id
  end
end
