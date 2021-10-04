class AddCompetitionReferencesToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :competition
  end
end
