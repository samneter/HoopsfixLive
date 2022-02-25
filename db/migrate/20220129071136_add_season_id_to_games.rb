class AddSeasonIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :season, foreign_key: true
  end
end
