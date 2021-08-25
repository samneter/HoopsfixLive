class AddCompetitionIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :competition_id, :integer
  end
end
