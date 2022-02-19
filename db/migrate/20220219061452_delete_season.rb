class DeleteSeason < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :season_id
    drop_table :seasons
  end
end
