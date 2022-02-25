class AddSeasonToCompetition < ActiveRecord::Migration[6.1]
  def change
    add_column :competitions, :season, :string
  end
end
