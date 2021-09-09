class RemoveCompetitionFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :competition, :string
  end
end
